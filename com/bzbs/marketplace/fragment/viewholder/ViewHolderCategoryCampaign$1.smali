.class Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign$1;
.super Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;
.source "ViewHolderCategoryCampaign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->d()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;)V
    .registers 2

    .prologue
    .line 92
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign$1;->a:Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 8

    .prologue
    .line 99
    const-string/jumbo v0, ""

    .line 100
    if-eqz p3, :cond_a

    .line 101
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 103
    :cond_a
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign$1;->a:Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign$1$1;

    invoke-direct {v3, p0}, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign$1$1;-><init>(Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign$1;)V

    .line 104
    invoke-virtual {v3}, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign$1$1;->b()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 103
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->a(Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 105
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign$1;->a:Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->a(Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;)V

    .line 106
    return-void
.end method

.method public a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 111
    return-void
.end method

.method public a(Ljava/lang/String;JJJ)V
    .registers 12

    .prologue
    .line 115
    invoke-super/range {p0 .. p7}, Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;->a(Ljava/lang/String;JJJ)V

    .line 116
    const-string/jumbo v0, ""

    .line 117
    if-eqz p1, :cond_d

    .line 118
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 120
    :cond_d
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign$1;->a:Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign$1$2;

    invoke-direct {v3, p0}, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign$1$2;-><init>(Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign$1;)V

    .line 121
    invoke-virtual {v3}, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign$1$2;->b()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 120
    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->a(Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 122
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign$1;->a:Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;->a(Lcom/bzbs/marketplace/fragment/viewholder/ViewHolderCategoryCampaign;)V

    .line 123
    return-void
.end method
