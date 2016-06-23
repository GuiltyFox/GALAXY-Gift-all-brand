.class Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5;
.super Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackList;
.source "MarketPlacePagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5;->this$0:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public onCache(Ljava/lang/String;JJJ)V
    .registers 12
    .param p1, "cache"    # Ljava/lang/String;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "time"    # J

    .prologue
    .line 318
    invoke-super/range {p0 .. p7}, Lcom/bzbs/marketplace/asynctask/marketplace/MarketPlaceMenuAsynctask$CallbackList;->onCache(Ljava/lang/String;JJJ)V

    .line 319
    const-string/jumbo v0, ""

    .line 320
    .local v0, "response":Ljava/lang/String;
    if-eqz p1, :cond_d

    .line 321
    new-instance v0, Ljava/lang/String;

    .end local v0    # "response":Ljava/lang/String;
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 323
    .restart local v0    # "response":Ljava/lang/String;
    :cond_d
    iget-object v2, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5;->this$0:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5$2;

    invoke-direct {v3, p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5$2;-><init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5;)V

    .line 324
    invoke-virtual {v3}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 323
    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v2, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    .line 325
    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5;->this$0:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    # invokes: Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->initWidget()V
    invoke-static {v1}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->access$500(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V

    .line 326
    return-void
.end method

.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 7
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "errorResponse"    # [B
    .param p4, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5;->this$0:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->progressGoogle:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    .line 314
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[BLjava/util/ArrayList;)V
    .registers 9
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B
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
    .local p4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/marketplace/model/marketplace/menu/MarketPlaceMenuModel;>;"
    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5;->this$0:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    iget-object v1, v1, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->progressGoogle:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    .line 301
    const-string/jumbo v0, ""

    .line 302
    .local v0, "response":Ljava/lang/String;
    if-eqz p3, :cond_13

    .line 303
    new-instance v0, Ljava/lang/String;

    .end local v0    # "response":Ljava/lang/String;
    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 305
    .restart local v0    # "response":Ljava/lang/String;
    :cond_13
    iget-object v2, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5;->this$0:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5$1;

    invoke-direct {v3, p0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5$1;-><init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5;)V

    .line 306
    invoke-virtual {v3}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 305
    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v2, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->listData:Ljava/util/ArrayList;

    .line 308
    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$5;->this$0:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    # invokes: Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->initWidget()V
    invoke-static {v1}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->access$500(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V

    .line 309
    return-void
.end method
