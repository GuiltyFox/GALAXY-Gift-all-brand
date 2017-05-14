.class public final Landroid/support/v4/view/KeyEventCompat;
.super Ljava/lang/Object;
.source "KeyEventCompat.java"


# static fields
.field static final a:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    .line 130
    new-instance v0, Landroid/support/v4/view/KeyEventCompat$HoneycombKeyEventVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/KeyEventCompat$HoneycombKeyEventVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/KeyEventCompat;->a:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    .line 134
    :goto_d
    return-void

    .line 132
    :cond_e
    new-instance v0, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/KeyEventCompat;->a:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    goto :goto_d
.end method

.method public static a(Landroid/view/KeyEvent;)Z
    .registers 3

    .prologue
    .line 155
    sget-object v0, Landroid/support/v4/view/KeyEventCompat;->a:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->b(I)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/KeyEvent;I)Z
    .registers 4

    .prologue
    .line 151
    sget-object v0, Landroid/support/v4/view/KeyEventCompat;->a:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->a(II)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/KeyEvent;)Z
    .registers 2

    .prologue
    .line 197
    sget-object v0, Landroid/support/v4/view/KeyEventCompat;->a:Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
