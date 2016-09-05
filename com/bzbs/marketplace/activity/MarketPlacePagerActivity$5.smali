.class Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5;
.super Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackList;
.source "MarketPlacePagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->o()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V
    .registers 2

    .prologue
    .line 296
    iput-object p1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5;->a:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 7

    .prologue
    .line 313
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5;->a:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->y:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    .line 314
    return-void
.end method

.method public a(I[Lcz/msebera/android/httpclient/Header;[BLjava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcz/msebera/android/httpclient/Header;",
            "[B",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5;->a:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->y:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    .line 301
    const-string/jumbo v0, ""

    .line 302
    if-eqz p3, :cond_13

    .line 303
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 305
    :cond_13
    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5;->a:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5$1;

    invoke-direct {v3, p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5$1;-><init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5;)V

    .line 306
    invoke-virtual {v3}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5$1;->b()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 305
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    .line 308
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5;->a:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-static {v0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->f(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V

    .line 309
    return-void
.end method

.method public a(Ljava/lang/String;JJJ)V
    .registers 12

    .prologue
    .line 318
    invoke-super/range {p0 .. p7}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackList;->a(Ljava/lang/String;JJJ)V

    .line 319
    const-string/jumbo v0, ""

    .line 320
    if-eqz p1, :cond_d

    .line 321
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 323
    :cond_d
    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5;->a:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5$2;

    invoke-direct {v3, p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5$2;-><init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5;)V

    .line 324
    invoke-virtual {v3}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5$2;->b()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 323
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b:Ljava/util/ArrayList;

    .line 325
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5;->a:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-static {v0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->f(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V

    .line 326
    return-void
.end method
