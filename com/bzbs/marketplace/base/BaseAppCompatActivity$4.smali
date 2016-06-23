.class Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;
.super Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackModel;
.source "BaseAppCompatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getPoints()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackModel;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 9
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "errorResponse"    # [B
    .param p4, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 354
    const-string/jumbo v0, ""

    .line 355
    .local v0, "response":Ljava/lang/String;
    if-eqz p3, :cond_a

    .line 356
    new-instance v0, Ljava/lang/String;

    .end local v0    # "response":Ljava/lang/String;
    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 359
    .restart local v0    # "response":Ljava/lang/String;
    :cond_a
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    # getter for: Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->access$000(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)Ljava/lang/String;

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

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[BLcom/bzbs/marketplace/model/PointModel;)V
    .registers 15
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B
    .param p4, "point"    # Lcom/bzbs/marketplace/model/PointModel;

    .prologue
    const v9, 0x7f090273

    const/16 v8, 0x8

    .line 326
    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const v3, 0x7f0901c1

    invoke-virtual {v2, v3}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "txt":Ljava/lang/String;
    const/4 v0, 0x0

    .line 328
    .local v0, "isMorePoints":Z
    invoke-virtual {p4}, Lcom/bzbs/marketplace/model/PointModel;->getPoints()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_17

    .line 329
    const/4 v0, 0x1

    .line 331
    :cond_17
    if-nez v0, :cond_23

    .line 332
    const-string/jumbo v2, "s"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 334
    :cond_23
    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v2, v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->tv_title_point1:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const v4, 0x7f090368

    invoke-virtual {v3, v4}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v2, v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->txtPoint:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/privilege/GalaxyGift;->formatter:Ljava/text/DecimalFormat;

    invoke-virtual {p4}, Lcom/bzbs/marketplace/model/PointModel;->getPoints()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v2, v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->tv_title_point3:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v2, v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->txtPoint:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v2, v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->tv_title_point3:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    invoke-virtual {p4}, Lcom/bzbs/marketplace/model/PointModel;->getPoints()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_ca

    .line 342
    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v2, v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->tv_title_point1:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {v4, v9}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " <font color=\'#3ba9f6\'><big>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/privilege/GalaxyGift;->formatter:Ljava/text/DecimalFormat;

    invoke-virtual {p4}, Lcom/bzbs/marketplace/model/PointModel;->getPoints()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "</big></font> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const v5, 0x7f090275

    invoke-virtual {v4, v5}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    :goto_bd
    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v2, v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {p4}, Lcom/bzbs/marketplace/model/PointModel;->getPoints()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v2, v4, v5}, Lcom/bzbs/data/UserLogin;->SetPoints(Landroid/content/Context;J)Z

    .line 348
    return-void

    .line 344
    :cond_ca
    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v2, v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->tv_title_point1:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {v4, v9}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " <font color=\'#3ba9f6\'><big>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/privilege/GalaxyGift;->formatter:Ljava/text/DecimalFormat;

    invoke-virtual {p4}, Lcom/bzbs/marketplace/model/PointModel;->getPoints()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "</big></font> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const v5, 0x7f090274

    invoke-virtual {v4, v5}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_bd
.end method
