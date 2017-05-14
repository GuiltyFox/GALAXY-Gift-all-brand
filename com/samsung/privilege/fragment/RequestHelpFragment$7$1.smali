.class Lcom/samsung/privilege/fragment/RequestHelpFragment$7$1;
.super Ljava/lang/Object;
.source "RequestHelpFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/RequestHelpFragment$7;->a(I[Lcz/msebera/android/httpclient/Header;[B)V
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/samsung/privilege/fragment/RequestHelpFragment$7;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/RequestHelpFragment$7;[B)V
    .registers 3

    .prologue
    .line 411
    iput-object p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$7$1;->b:Lcom/samsung/privilege/fragment/RequestHelpFragment$7;

    iput-object p2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$7$1;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 414
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$7$1;->b:Lcom/samsung/privilege/fragment/RequestHelpFragment$7;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/RequestHelpFragment$7;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v0, v1}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->d(Lcom/samsung/privilege/fragment/RequestHelpFragment;Z)V

    .line 415
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$7$1;->b:Lcom/samsung/privilege/fragment/RequestHelpFragment$7;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/RequestHelpFragment$7;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v0, v1}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->e(Lcom/samsung/privilege/fragment/RequestHelpFragment;Z)Z

    .line 416
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$7$1;->b:Lcom/samsung/privilege/fragment/RequestHelpFragment$7;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/RequestHelpFragment$7;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->c(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 418
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$7$1;->a:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const-class v2, Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/review/ReviewModel;

    .line 420
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 421
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$7$1;->b:Lcom/samsung/privilege/fragment/RequestHelpFragment$7;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/RequestHelpFragment$7;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->c(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 423
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$7$1;->b:Lcom/samsung/privilege/fragment/RequestHelpFragment$7;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/RequestHelpFragment$7;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v0, v1}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(Lcom/samsung/privilege/fragment/RequestHelpFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 424
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment$7$1;->b:Lcom/samsung/privilege/fragment/RequestHelpFragment$7;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/RequestHelpFragment$7;->a:Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->d(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    .line 425
    return-void
.end method
