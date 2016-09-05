.class final Lcom/samsung/privilege/util/DialogWallet$1;
.super Ljava/lang/Object;
.source "DialogWallet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogWallet;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 44
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogWallet$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogWallet$1;->a:Landroid/content/Context;

    const v1, 0x7f050022

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/samsung/privilege/util/DialogWallet$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/util/DialogWallet$1$1;-><init>(Lcom/samsung/privilege/util/DialogWallet$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 64
    invoke-static {}, Lcom/samsung/privilege/util/DialogWallet;->a()Landroid/app/Dialog;

    move-result-object v1

    const v2, 0x7f100617

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 65
    return-void
.end method
