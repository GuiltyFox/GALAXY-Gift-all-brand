.class Landroid/support/v4/widget/CompoundButtonCompat$BaseCompoundButtonCompat;
.super Ljava/lang/Object;
.source "CompoundButtonCompat.java"

# interfaces
.implements Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 80
    invoke-static {p1}, Landroid/support/v4/widget/CompoundButtonCompatDonut;->a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .registers 3

    .prologue
    .line 60
    invoke-static {p1, p2}, Landroid/support/v4/widget/CompoundButtonCompatDonut;->a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 61
    return-void
.end method

.method public a(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .prologue
    .line 70
    invoke-static {p1, p2}, Landroid/support/v4/widget/CompoundButtonCompatDonut;->a(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V

    .line 71
    return-void
.end method
