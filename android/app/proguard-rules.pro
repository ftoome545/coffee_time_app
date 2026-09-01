# Firebase
-keep class com.google.firebase.** { *; }
-keep class com.firebase.** { *; }

# Flutter
-keep class io.flutter.** { *; }
-keep interface io.flutter.** { *; }

# General
-keepattributes *Annotation*
-keepattributes Signature
-keepattributes SourceFile,LineNumberTable
-keep public class * extends java.lang.Exception

# Optimization
-optimizationpasses 5
-dontusemixedcaseclassnames
-verbose

# Pinput package
-keep class io.flutter.plugins.** { *; }

# Firebase Auth
-keepclassmembers class ** {
    public static *** getInstance(...);
}
