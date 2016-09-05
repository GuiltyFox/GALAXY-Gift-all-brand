.class final Lcom/samsung/privilege/util/DialogLoginGift$14;
.super Ljava/lang/Object;
.source "DialogLoginGift.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/widget/ImageButton;Lcom/facebook/login/widget/LoginButton;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/widget/ImageButton;

.field final synthetic d:Lcom/facebook/login/widget/LoginButton;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/content/Context;Landroid/widget/ImageButton;Lcom/facebook/login/widget/LoginButton;)V
    .registers 5

    .prologue
    .line 558
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$14;->a:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogLoginGift$14;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogLoginGift$14;->c:Landroid/widget/ImageButton;

    iput-object p4, p0, Lcom/samsung/privilege/util/DialogLoginGift$14;->d:Lcom/facebook/login/widget/LoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 560
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$14;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 562
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$14;->b:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->h(Landroid/content/Context;Z)Z

    .line 564
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->a()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f100584

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 565
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->a()Landroid/app/Dialog;

    move-result-object v1

    const v2, 0x7f10017f

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 567
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 568
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 570
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$14;->c:Landroid/widget/ImageButton;

    if-eqz v0, :cond_37

    .line 571
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$14;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    .line 574
    :cond_37
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$14;->d:Lcom/facebook/login/widget/LoginButton;

    if-eqz v0, :cond_40

    .line 575
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$14;->d:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton;->performClick()Z

    .line 577
    :cond_40
    return-void
.end method
