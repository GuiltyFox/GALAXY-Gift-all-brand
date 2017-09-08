.class final Lcom/samsung/privilege/util/DialogLoginGift$13;
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
    .line 579
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$13;->a:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogLoginGift$13;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogLoginGift$13;->c:Landroid/widget/ImageButton;

    iput-object p4, p0, Lcom/samsung/privilege/util/DialogLoginGift$13;->d:Lcom/facebook/login/widget/LoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 581
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$13;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 583
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$13;->b:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Z)Z

    .line 585
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->a()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f1003f0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 586
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->a()Landroid/app/Dialog;

    move-result-object v1

    const v2, 0x7f1003f1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 588
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$13;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/bzbs/data/AppSetting;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 591
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 594
    :cond_3c
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$13;->c:Landroid/widget/ImageButton;

    if-eqz v0, :cond_45

    .line 595
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$13;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    .line 598
    :cond_45
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$13;->d:Lcom/facebook/login/widget/LoginButton;

    if-eqz v0, :cond_4e

    .line 599
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$13;->d:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton;->performClick()Z

    .line 601
    :cond_4e
    return-void
.end method
