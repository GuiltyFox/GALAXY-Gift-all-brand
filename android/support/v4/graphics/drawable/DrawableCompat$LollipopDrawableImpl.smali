.class Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopDrawableImpl;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$KitKatDrawableImpl;
.source "DrawableCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 207
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$KitKatDrawableImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;FF)V
    .registers 4

    .prologue
    .line 210
    invoke-static {p1, p2, p3}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->a(Landroid/graphics/drawable/Drawable;FF)V

    .line 211
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;I)V
    .registers 3

    .prologue
    .line 220
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 221
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;IIII)V
    .registers 6

    .prologue
    .line 215
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->a(Landroid/graphics/drawable/Drawable;IIII)V

    .line 216
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .registers 3

    .prologue
    .line 225
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 226
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V
    .registers 3

    .prologue
    .line 240
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    .line 241
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 6

    .prologue
    .line 262
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 263
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .prologue
    .line 230
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 231
    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 235
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public f(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .prologue
    .line 245
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;
    .registers 3

    .prologue
    .line 250
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method
