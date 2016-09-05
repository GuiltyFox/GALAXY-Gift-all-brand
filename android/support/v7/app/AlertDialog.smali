.class public Landroid/support/v7/app/AlertDialog;
.super Landroid/support/v7/app/AppCompatDialog;
.source "AlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field private a:Landroid/support/v7/app/AlertController;


# direct methods
.method constructor <init>(Landroid/content/Context;IZ)V
    .registers 7

    .prologue
    .line 92
    invoke-static {p1, p2}, Landroid/support/v7/app/AlertDialog;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 93
    new-instance v0, Landroid/support/v7/app/AlertController;

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Landroid/support/v7/app/AlertController;-><init>(Landroid/content/Context;Landroid/support/v7/app/AppCompatDialog;Landroid/view/Window;)V

    iput-object v0, p0, Landroid/support/v7/app/AlertDialog;->a:Landroid/support/v7/app/AlertController;

    .line 94
    return-void
.end method

.method static a(Landroid/content/Context;I)I
    .registers 6

    .prologue
    .line 104
    const/high16 v0, 0x1000000

    if-lt p1, v0, :cond_5

    .line 109
    :goto_4
    return p1

    .line 107
    :cond_5
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->alertDialogTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 109
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_4
.end method

.method static synthetic a(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertController;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog;->a:Landroid/support/v7/app/AlertController;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 256
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog;->a:Landroid/support/v7/app/AlertController;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertController;->a()V

    .line 257
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 261
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog;->a:Landroid/support/v7/app/AlertController;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/AlertController;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 262
    const/4 v0, 0x1

    .line 264
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 269
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog;->a:Landroid/support/v7/app/AlertController;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/AlertController;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 270
    const/4 v0, 0x1

    .line 272
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Landroid/support/v7/app/AlertDialog;->a:Landroid/support/v7/app/AlertController;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertController;->a(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method
