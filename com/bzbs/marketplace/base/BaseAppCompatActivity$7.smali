.class Lcom/bzbs/marketplace/base/BaseAppCompatActivity$7;
.super Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;
.source "BaseAppCompatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->a(Ljava/lang/String;Lcom/bzbs/marketplace/listener/OnShareSuccessListener;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/listener/OnShareSuccessListener;

.field final synthetic b:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;Lcom/bzbs/marketplace/listener/OnShareSuccessListener;)V
    .registers 3

    .prologue
    .line 648
    iput-object p1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$7;->b:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iput-object p2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$7;->a:Lcom/bzbs/marketplace/listener/OnShareSuccessListener;

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 7

    .prologue
    .line 652
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    const-class v2, Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel;

    .line 654
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$7;->a:Lcom/bzbs/marketplace/listener/OnShareSuccessListener;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel;->getBuzzebees()Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel$BuzzebeesEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/SharePointMarketModel$BuzzebeesEntity;->getPoints()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/bzbs/marketplace/listener/OnShareSuccessListener;->a(I)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    .line 658
    :goto_1f
    return-void

    .line 655
    :catch_20
    move-exception v0

    .line 656
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method

.method public a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 9

    .prologue
    .line 662
    const-string/jumbo v0, ""

    .line 663
    if-eqz p3, :cond_a

    .line 664
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 666
    :cond_a
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$7;->b:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->a(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)Ljava/lang/String;

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

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return-void
.end method
