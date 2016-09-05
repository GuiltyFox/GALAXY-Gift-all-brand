.class Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$3$1;
.super Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;
.source "MarketPlaceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$3;->a(Landroid/view/View;II)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$3;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$3;)V
    .registers 2

    .prologue
    .line 222
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$3$1;->a:Lcom/bzbs/marketplace/fragment/MarketPlaceListFragment$3;

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 7

    .prologue
    .line 225
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 226
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/list/AddCartModel;

    .line 230
    return-void
.end method

.method public a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 235
    return-void
.end method
