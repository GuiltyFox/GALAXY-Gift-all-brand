.class Lcom/samsung/privilege/util/DialogProfile$5$1$3$1;
.super Ljava/lang/Object;
.source "DialogProfile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogProfile$5$1$3;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/util/DialogProfile$5$1$3;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogProfile$5$1$3;)V
    .registers 2

    .prologue
    .line 360
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogProfile$5$1$3$1;->a:Lcom/samsung/privilege/util/DialogProfile$5$1$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 363
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogProfile$5$1$3$1;->a:Lcom/samsung/privilege/util/DialogProfile$5$1$3;

    iget-object v1, v0, Lcom/samsung/privilege/util/DialogProfile$5$1$3;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/privilege/util/DialogProfile$5$1$3$1;->a:Lcom/samsung/privilege/util/DialogProfile$5$1$3;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogProfile$5$1$3;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/SubDistrict;

    iget-object v0, v0, Lcom/bzbs/bean/SubDistrict;->ProvinceCode:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 365
    invoke-static {}, Lcom/samsung/privilege/util/DialogProfile;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1054"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 366
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogProfile$5$1$3$1;->a:Lcom/samsung/privilege/util/DialogProfile$5$1$3;

    iget-object v1, v0, Lcom/samsung/privilege/util/DialogProfile$5$1$3;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/privilege/util/DialogProfile$5$1$3$1;->a:Lcom/samsung/privilege/util/DialogProfile$5$1$3;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogProfile$5$1$3;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/SubDistrict;

    iget-object v0, v0, Lcom/bzbs/bean/SubDistrict;->ProvinceName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    :goto_37
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 372
    return-void

    .line 368
    :cond_3b
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogProfile$5$1$3$1;->a:Lcom/samsung/privilege/util/DialogProfile$5$1$3;

    iget-object v1, v0, Lcom/samsung/privilege/util/DialogProfile$5$1$3;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/privilege/util/DialogProfile$5$1$3$1;->a:Lcom/samsung/privilege/util/DialogProfile$5$1$3;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogProfile$5$1$3;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/SubDistrict;

    iget-object v0, v0, Lcom/bzbs/bean/SubDistrict;->ProvinceName_EN:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_37
.end method
