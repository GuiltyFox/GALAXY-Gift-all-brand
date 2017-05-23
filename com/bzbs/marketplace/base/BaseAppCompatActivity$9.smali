.class Lcom/bzbs/marketplace/base/BaseAppCompatActivity$9;
.super Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;
.source "BaseAppCompatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->c(Z)V
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;Z)V
    .registers 3

    .prologue
    .line 703
    iput-object p1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$9;->b:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iput-boolean p2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$9;->a:Z

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 7

    .prologue
    .line 706
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 707
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel;

    .line 708
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$9;->b:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-boolean v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$9;->a:Z

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel;->getCart_count()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->a(ZI)V

    .line 709
    return-void
.end method

.method public a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 714
    return-void
.end method
