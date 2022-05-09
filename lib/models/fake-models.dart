import 'package:techblog/gen/assets.gen.dart';

import 'data_models.dart';

Map posterData = {
  "image": Assets.images.poster.path,
  "writer": "ملیکا عزیزی",
  "date": "یک روز پیش",
  "view": "251",
  "title": "دوازده قدم برنامه نویسی یک دوره...."
};

List<HashTagModel> hashTagList = [
  HashTagModel(title: "جاوا"),
  HashTagModel(title: "کاتلین"),
  HashTagModel(title: "فلاتر"),
  HashTagModel(title: "سی شارپ"),
  HashTagModel(title: "برنامه نویسی"),
  HashTagModel(title: "طراحی وب"),
  HashTagModel(title: "پایتون"),
  HashTagModel(title: "جاوا اسکرپیت"),
];

List<BlogModel> blogsList = [
  BlogModel(
      id: 1,
      imageUrl: "https://digiato.com/wp-content/uploads/2014/10/what-is-nfc.jpg",
      title: "NFC چیست و چه کاربردی دارد؟",
      writer: "ملیکا عزیزی",
      writerImageUrl:
          "https://digiato.com/wp-content/uploads/2014/10/what-is-nfc.jpg",
      date: "2 روز پیش",
      content: """
      کی که از قابلیت های وسایل اندرویدی،  پشتیبانی از تکنولوژی NFC است. در این مقاله قصد داریم در مورد آن بیشتر بدانیم. اِن‌اف‌سی بعد از پیاده سازی در موبایل‌ها، لپتاپ‌ها و سایر وسایل هر روز بیشتر و بیشتر مورد توجه قرار گرفته است.

گفته می‌شود که در آینده نزدیک اِن‌اف‌سی بیشترین تاثیر را در نحوه استفاده ما از موبایل‌هایمان خواهد داشت. از خرید تا برقراری ارتباط با دوستان و یا قفل کردن وسیله نقلیه‌تان همه به نوعی وابسته به این تکنولوژی خواهند بود.
      """,
      view: "300"),
  BlogModel(
      id: 2,
      imageUrl: "https://digiato.com/wp-content/uploads/2022/05/69fb040fbd3905ad76cec1da3e5c15fc.jpg",
      title:
          "گوگل اسیستنت حالا می‌تواند به‌طور خودکار گذرواژه‌های کروم را تغییر دهد",
      writer: "ارش قربانی",
      writerImageUrl:
          "https://digiato.com/wp-content/uploads/2022/05/69fb040fbd3905ad76cec1da3e5c15fc.jpg",
      date: "ماه پیش",
      content: """
      گوگل پارسال از قابلیتی برای کروم اندروید رونمایی کرد که به گوگل اسیستنت اجازه می‌داد تا به آسانی گذرواژه‌های مسروقه را تغییر دهد. این شرکت گفته بود این قابلیت را به مرور در اختیار کاربران قرار می‌دهد و حالا بالاخره شاهد دسترسی به این ویژگی در نسخه اندروید مرورگر کروم هستیم.

گوگل در سال 2021 گفت قابلیتی را عرضه می‌کند تا کاربران بتوانند به‌صورت خودکار گذرواژه‌های خود را عوض کنند. حالا در این آپدیت به محض استفاده از گذرواژه‌ای که پیش‌تر در سطح وب به خطر افتاده باشد، با دکمه‌ای تحت عنوان Change automatically روبرو می‌شوید که از طریق گوگل اسیستنت تغییر خودکار گذرواژه را برعهده می‌گیرد.
      """,
      view: "500"),
  BlogModel(
      id: 3,
      imageUrl: "https://digiato.com/wp-content/uploads/2022/05/fortnite-iphone.jpg",
      title: "بازی فورتنایت به لطف مایکروسافت به آیفون بازگشت",
      writer: "علی منصوری",
      writerImageUrl:
          "https://digiato.com/wp-content/uploads/2022/05/fortnite-iphone.jpg",
      date: "دو هفته پیش",
      content:
          """از زمانی که اپیک گیمز دعوای حقوقی‌اش با اپل را آغاز کرد، بازی محبوب فورتنایت از فروشگاه اپ این غول فناوری حذف شد. اما حالا اپیک گیمز تصمیم گرفته با مایکروسافت همکاری کند تا دوباره این بازی را به آیفون بیاورد، البته از طریق سرویس گیمینگ ایکس باکس کلاود (Xbox Cloud Gaming).""",
      view: "700"),
  BlogModel(
      id: 4,
      imageUrl:
          "https://digiato.com/wp-content/uploads/2022/05/play-store-bans-russian-users-paid-service-1.jpg",
      title:
          "کاربران پلی استور گوگل در روسیه دیگر نمی‌توانند اپ‌های پولی را خریداری یا آپدیت کنند",
      writer: "محمد محمدی",
      writerImageUrl:
          "https://digiato.com/wp-content/uploads/2022/05/play-store-bans-russian-users-paid-service-1.jpg",
      date: "1 روز پیش",
      content:
          """با حمله نظامی روسیه به اوکراین، کاربران روسی بیش از پیش تحت تحریم‌های مختلف قرار گرفتند. حالا کاربران روس از خرید یا آپدیت اپ‌های پولی در پلی استور گوگل محروم می‌شوند.

چندی پیش اعلام شد که App Store دیگر امکان خرید اپلیکیشن‌ها را برای کاربران روسی فراهم نخواهد کرد. حال گوگل هم این قافله پیوسته و ظاهرا کاربران ساکن این کشور نمی‌توانند از خدمات مربوط به خرید یا آپدیت اپلیکیشن‌های پولی استفاده کنند.""",
      view: "210"),
  BlogModel(
      id: 5,
      imageUrl: "https://digiato.com/wp-content/uploads/2022/05/twitter-new-leaked-features-1.jpg",
      title: "توییتر روی قابلیت ارسال همزمان عکس و ویدیو کار می‌‌کند",
      writer: "ایدا جلالی",
      writerImageUrl: "https://digiato.com/wp-content/uploads/2022/05/twitter-new-leaked-features-1.jpg",
      date: "3 روز پیش",
      content: """وییتر قصد دارد ویژگی‌ جدید و کاربردی را در اختیار کاربران قرار دهد که به موجب آن بتوانند به صورت همزمان عکس و ویدیو توییت کنند.

توییتر ویژگی‌های مختلفی از جمله قابلیتی مشابه اینستاگرام آزمایش می‌کند تا حرف تازه‌ای برای کاربران داشته باشد.""",
      view: "700"),
  BlogModel(
      id: 6,
      imageUrl: "https://digiato.com/wp-content/uploads/2022/04/sta-je-xml.jpg",
      title: "زبان نشانه‌گذاری XML چیست و چه کاربردی دارد؟",
      writer: "فاطمه حسینی",
      writerImageUrl: "https://digiato.com/wp-content/uploads/2022/04/sta-je-xml.jpg",
      date: "1 سال پیش",
      content: """XML یک زبان نشانه‌گذاری برای ایجاد فرمت و ساختار برای اطلاعات جهت تسهیل تجزیه‌وتحلیل راحت‌تر آن‌ها و ایجاد ساختاری کاملاً مشخص و طبقه‌بندی‌شده برای اسناد متنی و همچنین تسهیل به‌اشتراک‌گذاری اطلاعات در منابع مختلف دربردارنده داده است. در این مطلب قصد داریم ببینیم این زبان نشانه‌گذاری دقیقاً چیست، چه کاربردهایی دارد و مزایای آن چیست.""",
      view: "1259"),
];

List<PodcastListModel> podcastList = [

  PodcastListModel(imageUrl: "https://digiato.com/wp-content/uploads/2014/10/what-is-nfc.jpg", title: "رادیو کد یاد"),
  PodcastListModel(imageUrl: "https://digiato.com/wp-content/uploads/2014/10/what-is-nfc.jpg", title: "رادیو فراکد"),
  PodcastListModel(imageUrl: "https://digiato.com/wp-content/uploads/2014/10/what-is-nfc.jpg", title: "پاکدست رمزون"),
  PodcastListModel(imageUrl: "https://digiato.com/wp-content/uploads/2014/10/what-is-nfc.jpg", title: "پاکدست رمز ارز"),
  PodcastListModel(imageUrl: "https://digiato.com/wp-content/uploads/2014/10/what-is-nfc.jpg", title: "رادیو گیگ"),
  PodcastListModel(imageUrl: "https://digiato.com/wp-content/uploads/2014/10/what-is-nfc.jpg", title: "رادیو کد اوا"),


];
