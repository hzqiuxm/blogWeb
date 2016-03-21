package com.blogweb.search;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;

import java.io.File;
import java.io.FileFilter;
import java.io.FileReader;
import java.nio.file.Paths;

/**
 * Created by hzqiuxm on 2016/3/19 0019.
 * 生成索引
 */
public class Indexer {
    public static void main(String[] args) throws Exception{
        final String indexDir = "D://lucene//test1";
        final String dataDir = "D://lucene//test2";

        long startTime  = System.currentTimeMillis();
        Indexer indexer = new Indexer(indexDir);
        int numIndexed;
        try {
            numIndexed = indexer.index(dataDir,new TextFileFiler());
        } finally {
            indexer.close();
        }
        long endTime = System.currentTimeMillis();
        System.out.println("搜索文件总共用了："+ (endTime-startTime) + "毫秒");

}

    private IndexWriter writer;

    public Indexer(String indexDir) throws Exception{

        //存放索引的地方
        //Directory directory = new RAMDirectory(); 放在内存中
        Directory dir = FSDirectory.open(Paths.get(indexDir));
        Analyzer analyzer  = new StandardAnalyzer();
        IndexWriterConfig iwc = new IndexWriterConfig(analyzer);
        writer = new IndexWriter(dir,iwc);

    }

    public void close() throws Exception{
        writer.close();
    }

    public int index(String dataDir, FileFilter filter) throws Exception{
        File[] files = new File(dataDir).listFiles();
        for(File f : files){
            if(!f.isDirectory()&&!f.isHidden()&&f.exists()&&f.canRead()&&(filter == null||filter.accept(f))){
                indexFile(f);
            }
        }
        return writer.numDocs();
    }

    private static class TextFileFiler implements FileFilter{

        @Override
        public boolean accept(File pathname) {
            return pathname.getName().toLowerCase().endsWith(".txt");
        }
    }
    protected Document getDocument(File file) throws Exception{
        Document doc = new Document();
        doc.add(new Field("wendnag",new FileReader(file)));
        doc.add(new Field("wenjianming", file.getName(),Field.Store.YES,Field.Index.NOT_ANALYZED));
        doc.add(new Field("lujing", file.getCanonicalPath(),Field.Store.YES,Field.Index.NOT_ANALYZED));

        return doc;
    }

    private void indexFile(File file) throws Exception{
        System.out.println("Indexing "+ file.getCanonicalPath());
        Document doc = getDocument(file);
        writer.addDocument(doc);
    }

}
