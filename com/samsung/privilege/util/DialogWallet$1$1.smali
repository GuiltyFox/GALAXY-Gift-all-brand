.class Lcom/samsung/privilege/util/DialogWallet$1$1;
.super Ljava/lang/Object;
.source "DialogWallet.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogWallet$1;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/util/DialogWallet$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogWallet$1;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogWallet$1$1;->a:Lcom/samsung/privilege/util/DialogWallet$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .prologue
    .line 56
    invoke-static {}, Lcom/samsung/privilege/util/DialogWallet;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 57
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 62
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 52
    return-void
.end method
