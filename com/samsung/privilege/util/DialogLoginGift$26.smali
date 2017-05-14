.class final Lcom/samsung/privilege/util/DialogLoginGift$26;
.super Ljava/lang/Object;
.source "DialogLoginGift.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Landroid/app/Dialog;)V
    .registers 4

    .prologue
    .line 1611
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$26;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogLoginGift$26;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogLoginGift$26;->c:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$26;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1033"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1615
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$26;->a:Landroid/content/Context;

    const-string/jumbo v1, "1054"

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->k(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1616
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$26;->b:Landroid/widget/ImageView;

    const v1, 0x7f020298

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1621
    :goto_1f
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$26;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 1623
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$26;->c:Landroid/app/Dialog;

    const v1, 0x7f100605

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$26;->a:Landroid/content/Context;

    const v2, 0x7f090311

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1624
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$26;->c:Landroid/app/Dialog;

    const v1, 0x7f100615

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$26;->a:Landroid/content/Context;

    const v2, 0x7f09030d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1625
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$26;->c:Landroid/app/Dialog;

    const v1, 0x7f100602

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$26;->a:Landroid/content/Context;

    const v2, 0x7f09030c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1626
    return-void

    .line 1618
    :cond_6a
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$26;->a:Landroid/content/Context;

    const-string/jumbo v1, "1033"

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->k(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1619
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$26;->b:Landroid/widget/ImageView;

    const v1, 0x7f020299

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1f
.end method
