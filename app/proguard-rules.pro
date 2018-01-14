# ----------------------------------------
# Retrofit
# ----------------------------------------
-dontnote retrofit2.Platform
-dontwarn retrofit2.Platform$Java8
-dontwarn retrofit2.**
-keepattributes Signature
-keepattributes Exceptions

# ----------------------------------------
# OkHttp
# ----------------------------------------
-dontwarn okhttp3.**
-dontwarn com.squareup.okhttp3.**
-dontwarn okio.**

-dontwarn javax.annotation.**
-keepclasseswithmembers class * {
    @com.squareup.moshi.* <methods>;
}
-keep @com.squareup.moshi.JsonQualifier interface *

-keepclassmembers class kotlin.Metadata {
    public <methods>;
}

# ----------------------------------------
# Glide
# ----------------------------------------
-keep public class * implements com.bumptech.glide.module.GlideModule
-keep public class * extends com.bumptech.glide.module.AppGlideModule
-keep public enum com.bumptech.glide.load.resource.bitmap.ImageHeaderParser$** {
  **[] $VALUES;
  public *;
}

# ----------------------------------------
# RxJava
# ----------------------------------------
-dontwarn rx.internal.util.unsafe.**
-keep class rx.schedulers.Schedulers {
    public static <methods>;
}
-keep class rx.schedulers.ImmediateScheduler {
    public <methods>;
}
-keep class rx.schedulers.TestScheduler {
    public <methods>;
}
-keep class rx.schedulers.Schedulers {
    public static ** test();
}

# ----------------------------------------
# dagger
# ----------------------------------------
-dontwarn com.google.errorprone.annotations.*

# ----------------------------------------
# DataBinding
# ----------------------------------------
-keepclassmembers public class io.github.droidkaigi.confsched2018.presentation.common.binding.* {*;}
-keep class android.databinding.** { *; }
-keepattributes *Annotation*
-keepattributes javax.xml.bind.annotation.*
-keepattributes javax.annotation.processing.*

-keepclassmembers class ** {
    @android.databinding.BindingAdapter public *;
}
-dontwarn android.databinding.**
