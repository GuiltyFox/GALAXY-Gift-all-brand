.class Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;
.super Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;
.source "TextUtilsCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;-><init>(Landroid/support/v4/text/TextUtilsCompat$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/text/TextUtilsCompat$1;)V
    .registers 2

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Locale;)I
    .registers 3

    .prologue
    .line 111
    invoke-static {p1}, Landroid/support/v4/text/TextUtilsCompatJellybeanMr1;->a(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method
