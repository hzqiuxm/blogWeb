<%--
  Created by IntelliJ IDEA.
  User: hzqiuxm
  Date: 2015/8/22
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head lang="en">
  <title>关于我们 </title>
  <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
  <meta name="description" content=""/>
  <meta name="keywords" content=""/>
  <script src="/plugins/jquery/jquery-1.11.1.min.js"></script>
  <script src="/commons/css/5grid/init.js?use=mobile,desktop,1200px,1000px&amp;mobileUI=1&amp;mobileUI.theme=none"></script>

  <noscript>
    <link rel="stylesheet" href="/commons/css/style.css"/>
    <link rel="stylesheet" href="/commonscss/style-desktop.css"/>
    <link rel="stylesheet" href="/commons/css/style-1200px.css"/>
  </noscript>
</head>

<body class="left-sidebar">

<!-- Sidebar -->
<div id="sidebar">

  <!-- Logo -->
  <div id="logo">
    <h1 class="mobileUI-site-name">紫牛小筑</h1>
  </div>

  <!-- Nav -->
  <nav id="nav" class="mobileUI-site-nav">
    <ul>
      <li class="current_page_item"><a href="/blog">原创博文</a></li>
      <li><a href="#">原创课程</a></li>
      <li><a href="#">课件下载</a></li>
      <li><a href="/lesson">选课系统</a></li>
      <li><a href="/blog/about_me">关于我们</a></li>
    </ul>
  </nav>

  <!-- Search -->
  <section class="is-search is-first">
    <form method="post" action="#">
      <input type="text" class="text" name="search" placeholder="Search"/>
    </form>
  </section>
  <section class="is-calendar">
    <div class="inner">
      <table>
        <caption>Auguest 2015</caption>
        <thead>
        <tr>
          <th scope="col" title="Monday">M</th>
          <th scope="col" title="Tuesday">T</th>
          <th scope="col" title="Wednesday">W</th>
          <th scope="col" title="Thursday">T</th>
          <th scope="col" title="Friday">F</th>
          <th scope="col" title="Saturday">S</th>
          <th scope="col" title="Sunday">S</th>
        </tr>
        </thead>
        <tbody>
        <tr>
          <td colspan="4" class="pad"><span>&nbsp;</span></td>
          <td><span>1</span></td>
          <td><span>2</span></td>
          <td><span>3</span></td>
        </tr>
        <tr>
          <td><span>4</span></td>
          <td><span>5</span></td>
          <td><a href="#">6</a></td>
          <td><span>7</span></td>
          <td><span>8</span></td>
          <td><span>9</span></td>
          <td><a href="#">10</a></td>
        </tr>
        <tr>
          <td><span>11</span></td>
          <td><span>12</span></td>
          <td><span>13</span></td>
          <td class="today"><a href="#">14</a></td>
          <td><span>15</span></td>
          <td><span>16</span></td>
          <td><span>17</span></td>
        </tr>
        <tr>
          <td><span>18</span></td>
          <td><span>19</span></td>
          <td><span>20</span></td>
          <td><span>21</span></td>
          <td><span>22</span></td>
          <td><a href="#">23</a></td>
          <td><span>24</span></td>
        </tr>
        <tr>
          <td><a href="#">25</a></td>
          <td><span>26</span></td>
          <td><span>27</span></td>
          <td><span>28</span></td>
          <td class="pad" colspan="3"><span>&nbsp;</span></td>
        </tr>
        </tbody>
      </table>
    </div>
  </section>

  <!-- Copyright -->
  <div id="copyright">
    <p>
      &copy; 2015 An China Site.<br/>
      友情链接: <a href="http://www.hzqiuxm.com/" title="爱丁堡">爱丁堡</a>
    </p>
  </div>
</div>

</body>
</html>
