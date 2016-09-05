.class Lcom/samsung/privilege/fragment/ReplyFragment$5$1;
.super Ljava/lang/Object;
.source "ReplyFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/ReplyFragment$5;->a(I[Lcz/msebera/android/httpclient/Header;[B)V
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/samsung/privilege/fragment/ReplyFragment$5;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/ReplyFragment$5;[B)V
    .registers 3

    .prologue
    .line 293
    iput-object p1, p0, Lcom/samsung/privilege/fragment/ReplyFragment$5$1;->b:Lcom/samsung/privilege/fragment/ReplyFragment$5;

    iput-object p2, p0, Lcom/samsung/privilege/fragment/ReplyFragment$5$1;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 298
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/ReplyFragment$5$1;->a:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const-class v2, Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/review/ReviewModel;

    .line 301
    iget-object v1, p0, Lcom/samsung/privilege/fragment/ReplyFragment$5$1;->b:Lcom/samsung/privilege/fragment/ReplyFragment$5;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/ReplyFragment$5;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-static {v1}, Lcom/samsung/privilege/fragment/ReplyFragment;->k(Lcom/samsung/privilege/fragment/ReplyFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v0, p0, Lcom/samsung/privilege/fragment/ReplyFragment$5$1;->b:Lcom/samsung/privilege/fragment/ReplyFragment$5;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/ReplyFragment$5;->a:Lcom/samsung/privilege/fragment/ReplyFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/ReplyFragment;->l(Lcom/samsung/privilege/fragment/ReplyFragment;)V

    .line 304
    return-void
.end method
