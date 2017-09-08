.class final Lcom/samsung/privilege/util/DialogLoginGift$25;
.super Ljava/lang/Object;
.source "DialogLoginGift.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Landroid/app/Dialog;)V
    .registers 4

    .prologue
    .line 1655
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$25;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogLoginGift$25;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 1658
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$25;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1033"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1659
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$25;->a:Landroid/content/Context;

    const-string/jumbo v1, "1054"

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1660
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$25;->b:Landroid/widget/ImageView;

    const v1, 0x7f02018a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1665
    :goto_1f
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$25;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 1667
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/app/Dialog;

    const v1, 0x7f100434

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$25;->a:Landroid/content/Context;

    const v2, 0x7f090143

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1668
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/app/Dialog;

    const v1, 0x7f100444

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$25;->a:Landroid/content/Context;

    const v2, 0x7f09013f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1669
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$25;->c:Landroid/app/Dialog;

    const v1, 0x7f100431

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$25;->a:Landroid/content/Context;

    const v2, 0x7f09013e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1670
    return-void

    .line 1662
    :cond_6a
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$25;->a:Landroid/content/Context;

    const-string/jumbo v1, "1033"

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1663
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$25;->b:Landroid/widget/ImageView;

    const v1, 0x7f02018b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1f
.end method
