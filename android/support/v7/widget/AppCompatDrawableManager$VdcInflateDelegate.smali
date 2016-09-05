.class Landroid/support/v7/widget/AppCompatDrawableManager$VdcInflateDelegate;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"

# interfaces
.implements Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/AppCompatDrawableManager$1;)V
    .registers 2

    .prologue
    .line 886
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatDrawableManager$VdcInflateDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 8

    .prologue
    .line 891
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Landroid/support/graphics/drawable/VectorDrawableCompat;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/graphics/drawable/VectorDrawableCompat;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 895
    :goto_8
    return-object v0

    .line 893
    :catch_9
    move-exception v0

    .line 894
    const-string/jumbo v1, "VdcInflateDelegate"

    const-string/jumbo v2, "Exception while inflating <vector>"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 895
    const/4 v0, 0x0

    goto :goto_8
.end method
