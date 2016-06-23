.class Lcom/bzbs/marketplace/base/BaseAppCompatActivity$7;
.super Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;
.source "BaseAppCompatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onSharedSuccess(Ljava/lang/String;Lcom/bzbs/marketplace/listener/OnShareSuccessListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

.field final synthetic val$onShareSuccessListener:Lcom/bzbs/marketplace/listener/OnShareSuccessListener;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;Lcom/bzbs/marketplace/listener/OnShareSuccessListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$7;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iput-object p2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$7;->val$onShareSuccessListener:Lcom/bzbs/marketplace/listener/OnShareSuccessListener;

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;-><init>()V

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
    .line 639
    const-string/jumbo v0, ""

    .line 640
    .local v0, "response":Ljava/lang/String;
    if-eqz p3, :cond_a

    .line 641
    new-instance v0, Ljava/lang/String;

    .end local v0    # "response":Ljava/lang/String;
    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 643
    .restart local v0    # "response":Ljava/lang/String;
    :cond_a
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$7;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    # getter for: Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->access$000(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFailureShare:= statusCode:= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", responseBody:= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 9
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 629
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p3}, Ljava/lang/String;-><init>([B)V

    const-class v4, Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel;

    .line 631
    .local v1, "model":Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel;
    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$7;->val$onShareSuccessListener:Lcom/bzbs/marketplace/listener/OnShareSuccessListener;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel;->getBuzzebees()Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel$BuzzebeesEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel$BuzzebeesEntity;->getPoints()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/bzbs/marketplace/listener/OnShareSuccessListener;->onSharedSuccess(I)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    .line 635
    .end local v1    # "model":Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel;
    :goto_1f
    return-void

    .line 632
    :catch_20
    move-exception v0

    .line 633
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method
