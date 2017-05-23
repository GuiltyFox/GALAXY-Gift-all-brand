.class Landroid/support/v4/graphics/drawable/DrawableCompat$BaseDrawableImpl;
.super Ljava/lang/Object;
.source "DrawableCompat.java"

# interfaces
.implements Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableImpl;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .prologue
    .line 69
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;FF)V
    .registers 4

    .prologue
    .line 82
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;I)V
    .registers 3

    .prologue
    .line 90
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompatBase;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 91
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;IIII)V
    .registers 6

    .prologue
    .line 86
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .registers 3

    .prologue
    .line 95
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompatBase;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 96
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V
    .registers 3

    .prologue
    .line 126
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 6

    .prologue
    .line 147
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/graphics/drawable/DrawableCompatBase;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 148
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .prologue
    .line 100
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompatBase;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 101
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Z)V
    .registers 3

    .prologue
    .line 73
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/graphics/drawable/Drawable;I)Z
    .registers 4

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 105
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatBase;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/graphics/drawable/Drawable;)I
    .registers 3

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;
    .registers 3

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public g(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 141
    return-void
.end method
