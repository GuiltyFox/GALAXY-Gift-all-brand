.class public final Landroid/support/v4/widget/CompoundButtonCompat;
.super Ljava/lang/Object;
.source "CompoundButtonCompat.java"


# static fields
.field private static final a:Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    const/16 v1, 0x17

    if-lt v0, v1, :cond_e

    .line 41
    new-instance v0, Landroid/support/v4/widget/CompoundButtonCompat$Api23CompoundButtonImpl;

    invoke-direct {v0}, Landroid/support/v4/widget/CompoundButtonCompat$Api23CompoundButtonImpl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/CompoundButtonCompat;->a:Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;

    .line 47
    :goto_d
    return-void

    .line 42
    :cond_e
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1a

    .line 43
    new-instance v0, Landroid/support/v4/widget/CompoundButtonCompat$LollipopCompoundButtonImpl;

    invoke-direct {v0}, Landroid/support/v4/widget/CompoundButtonCompat$LollipopCompoundButtonImpl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/CompoundButtonCompat;->a:Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;

    goto :goto_d

    .line 45
    :cond_1a
    new-instance v0, Landroid/support/v4/widget/CompoundButtonCompat$BaseCompoundButtonCompat;

    invoke-direct {v0}, Landroid/support/v4/widget/CompoundButtonCompat$BaseCompoundButtonCompat;-><init>()V

    sput-object v0, Landroid/support/v4/widget/CompoundButtonCompat;->a:Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;

    goto :goto_d
.end method

.method public static a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 174
    sget-object v0, Landroid/support/v4/widget/CompoundButtonCompat;->a:Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;->a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .registers 3

    .prologue
    .line 128
    sget-object v0, Landroid/support/v4/widget/CompoundButtonCompat;->a:Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;->a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 129
    return-void
.end method

.method public static a(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .prologue
    .line 154
    sget-object v0, Landroid/support/v4/widget/CompoundButtonCompat;->a:Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;->a(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V

    .line 155
    return-void
.end method
