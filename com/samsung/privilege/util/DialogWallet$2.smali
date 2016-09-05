.class final Lcom/samsung/privilege/util/DialogWallet$2;
.super Ljava/lang/Object;
.source "DialogWallet.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogWallet;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 85
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 90
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4

    .prologue
    .line 79
    invoke-static {}, Lcom/samsung/privilege/util/DialogWallet;->a()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f100617

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    return-void
.end method
