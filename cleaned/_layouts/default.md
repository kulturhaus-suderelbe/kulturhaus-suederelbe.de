<!DOCTYPE html>
<html dir="ltr" lang="de-DE">

{% include head.html %}

<body>

{% markdown header.md %}

<div class="page">
  {{ content }}
</div>

{% markdown footer.md %}

</body>

</html>
