.class Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$3;
.super Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;
.source "ReviewGiftBlurDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->a(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;)V
    .registers 2

    .prologue
    .line 426
    iput-object p1, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 10

    .prologue
    .line 432
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    invoke-static {v0}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->c(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 433
    const-string/jumbo v0, "Rating"

    const-string/jumbo v1, "Star 1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    invoke-static {v3}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->b(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;)Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    invoke-static {v3}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->b(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;)Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 445
    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->dismiss()V

    .line 446
    return-void

    .line 434
    :cond_50
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    invoke-static {v0}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->c(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 435
    const-string/jumbo v0, "Rating"

    const-string/jumbo v1, "Star 2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    invoke-static {v3}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->b(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;)Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    invoke-static {v3}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->b(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;)Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_4a

    .line 436
    :cond_9b
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    invoke-static {v0}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->c(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 437
    const-string/jumbo v0, "Rating"

    const-string/jumbo v1, "Star 3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    invoke-static {v3}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->b(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;)Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    invoke-static {v3}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->b(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;)Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_4a

    .line 438
    :cond_e7
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    invoke-static {v0}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->c(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 439
    const-string/jumbo v0, "Rating"

    const-string/jumbo v1, "Star 4"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    invoke-static {v3}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->b(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;)Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    invoke-static {v3}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->b(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;)Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_4a

    .line 440
    :cond_133
    iget-object v0, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    invoke-static {v0}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->c(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 441
    const-string/jumbo v0, "Rating"

    const-string/jumbo v1, "Star 5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    invoke-static {v3}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->b(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;)Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog$3;->a:Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;

    invoke-static {v3}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->b(Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;)Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x5

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_4a
.end method

.method public a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 450
    if-eqz p3, :cond_9

    .line 457
    invoke-static {}, Lcom/bzbs/marketplace/dialog/ReviewGiftBlurDialog;->f()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 460
    :cond_9
    return-void
.end method
