.class Lcom/bzbs/marketplace/base/BaseAppCompatActivity$8;
.super Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;
.source "BaseAppCompatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->callCountCart(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    .prologue
    .line 657
    iput-object p1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$8;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iput-boolean p2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$8;->val$visible:Z

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 5
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "errorResponse"    # [B
    .param p4, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 668
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 9
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 660
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    .line 661
    .local v1, "result":Ljava/lang/String;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel;

    .line 662
    .local v0, "cartModel":Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel;
    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$8;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-boolean v3, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$8;->val$visible:Z

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel;->getCart_count()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->setBtnBasket(ZI)V

    .line 663
    return-void
.end method
