.class Landroid/support/v4/widget/CompoundButtonCompat$Api23CompoundButtonImpl;
.super Landroid/support/v4/widget/CompoundButtonCompat$LollipopCompoundButtonImpl;
.source "CompoundButtonCompat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/support/v4/widget/CompoundButtonCompat$LollipopCompoundButtonImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 107
    invoke-static {p1}, Landroid/support/v4/widget/CompoundButtonCompatApi23;->a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
