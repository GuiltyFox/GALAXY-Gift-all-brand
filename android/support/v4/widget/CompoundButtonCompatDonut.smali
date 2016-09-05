.class Landroid/support/v4/widget/CompoundButtonCompatDonut;
.super Ljava/lang/Object;
.source "CompoundButtonCompatDonut.java"


# static fields
.field private static a:Ljava/lang/reflect/Field;

.field private static b:Z


# direct methods
.method static a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 61
    sget-boolean v0, Landroid/support/v4/widget/CompoundButtonCompatDonut;->b:Z

    if-nez v0, :cond_19

    .line 63
    :try_start_6
    const-class v0, Landroid/widget/CompoundButton;

    const-string/jumbo v2, "mButtonDrawable"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/CompoundButtonCompatDonut;->a:Ljava/lang/reflect/Field;

    .line 64
    sget-object v0, Landroid/support/v4/widget/CompoundButtonCompatDonut;->a:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_17
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_17} :catch_26

    .line 68
    :goto_17
    sput-boolean v4, Landroid/support/v4/widget/CompoundButtonCompatDonut;->b:Z

    .line 71
    :cond_19
    sget-object v0, Landroid/support/v4/widget/CompoundButtonCompatDonut;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3d

    .line 73
    :try_start_1d
    sget-object v0, Landroid/support/v4/widget/CompoundButtonCompatDonut;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_25} :catch_31

    .line 79
    :goto_25
    return-object v0

    .line 65
    :catch_26
    move-exception v0

    .line 66
    const-string/jumbo v2, "CompoundButtonCompatDonut"

    const-string/jumbo v3, "Failed to retrieve mButtonDrawable field"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 74
    :catch_31
    move-exception v0

    .line 75
    const-string/jumbo v2, "CompoundButtonCompatDonut"

    const-string/jumbo v3, "Failed to get button drawable via reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    sput-object v1, Landroid/support/v4/widget/CompoundButtonCompatDonut;->a:Ljava/lang/reflect/Field;

    :cond_3d
    move-object v0, v1

    .line 79
    goto :goto_25
.end method

.method static a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .registers 3

    .prologue
    .line 35
    instance-of v0, p0, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz v0, :cond_9

    .line 36
    check-cast p0, Landroid/support/v4/widget/TintableCompoundButton;

    invoke-interface {p0, p1}, Landroid/support/v4/widget/TintableCompoundButton;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 38
    :cond_9
    return-void
.end method

.method static a(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .prologue
    .line 48
    instance-of v0, p0, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz v0, :cond_9

    .line 49
    check-cast p0, Landroid/support/v4/widget/TintableCompoundButton;

    invoke-interface {p0, p1}, Landroid/support/v4/widget/TintableCompoundButton;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 51
    :cond_9
    return-void
.end method
