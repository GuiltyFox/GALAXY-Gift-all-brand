.class Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;
.super Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackModel;
.source "BaseAppCompatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->l()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)V
    .registers 2

    .prologue
    .line 321
    iput-object p1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackModel;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Lcz/msebera/android/httpclient/Header;[BLcom/bzbs/marketplace/model/PointModel;)V
    .registers 13

    .prologue
    const v7, 0x7f090284

    const/16 v6, 0x8

    const/4 v1, 0x1

    .line 326
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const v2, 0x7f0901c5

    invoke-virtual {v0, v2}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 327
    const/4 v2, 0x0

    .line 328
    invoke-virtual {p4}, Lcom/bzbs/marketplace/model/PointModel;->getPoints()I

    move-result v3

    if-le v3, v1, :cond_112

    .line 331
    :goto_16
    if-nez v1, :cond_22

    .line 332
    const-string/jumbo v1, "s"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 334
    :cond_22
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v1, v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const v3, 0x7f0903ab

    invoke-virtual {v2, v3}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v1, v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->j:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/privilege/GalaxyGift;->c:Ljava/text/DecimalFormat;

    invoke-virtual {p4}, Lcom/bzbs/marketplace/model/PointModel;->getPoints()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v1, v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    invoke-virtual {p4}, Lcom/bzbs/marketplace/model/PointModel;->getPoints()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_c9

    .line 342
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->k:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {v2, v7}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " <font color=\'#3ba9f6\'><big>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/privilege/GalaxyGift;->c:Ljava/text/DecimalFormat;

    invoke-virtual {p4}, Lcom/bzbs/marketplace/model/PointModel;->getPoints()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</big></font> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const v3, 0x7f090286

    invoke-virtual {v2, v3}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    :goto_bc
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {p4}, Lcom/bzbs/marketplace/model/PointModel;->getPoints()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;J)Z

    .line 348
    return-void

    .line 344
    :cond_c9
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->k:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {v2, v7}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " <font color=\'#3ba9f6\'><big>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/privilege/GalaxyGift;->c:Ljava/text/DecimalFormat;

    invoke-virtual {p4}, Lcom/bzbs/marketplace/model/PointModel;->getPoints()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</big></font> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const v3, 0x7f090285

    invoke-virtual {v2, v3}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_bc

    :cond_112
    move v1, v2

    goto/16 :goto_16
.end method

.method public a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 9

    .prologue
    .line 354
    const-string/jumbo v0, ""

    .line 355
    if-eqz p3, :cond_a

    .line 356
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 359
    :cond_a
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->a(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "FailError:= code:= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", errorResponse:= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-void
.end method
