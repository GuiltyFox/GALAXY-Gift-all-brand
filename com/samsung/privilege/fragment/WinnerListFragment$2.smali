.class Lcom/samsung/privilege/fragment/WinnerListFragment$2;
.super Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$CallbackList;
.source "WinnerListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/WinnerListFragment;->d()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/fragment/WinnerListFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/WinnerListFragment;)V
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/samsung/privilege/fragment/WinnerListFragment$2;->a:Lcom/samsung/privilege/fragment/WinnerListFragment;

    invoke-direct {p0}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$CallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/privilege/fragment/WinnerListFragment$2;->a:Lcom/samsung/privilege/fragment/WinnerListFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/WinnerListFragment;->c(Lcom/samsung/privilege/fragment/WinnerListFragment;)V

    .line 86
    return-void
.end method

.method public a(I[Lcz/msebera/android/httpclient/Header;[BLjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcz/msebera/android/httpclient/Header;",
            "[B",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/FriendWinnerModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/privilege/fragment/WinnerListFragment$2;->a:Lcom/samsung/privilege/fragment/WinnerListFragment;

    invoke-static {v0, p4}, Lcom/samsung/privilege/fragment/WinnerListFragment;->a(Lcom/samsung/privilege/fragment/WinnerListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 79
    iget-object v0, p0, Lcom/samsung/privilege/fragment/WinnerListFragment$2;->a:Lcom/samsung/privilege/fragment/WinnerListFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/WinnerListFragment;->b(Lcom/samsung/privilege/fragment/WinnerListFragment;)V

    .line 80
    iget-object v0, p0, Lcom/samsung/privilege/fragment/WinnerListFragment$2;->a:Lcom/samsung/privilege/fragment/WinnerListFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/WinnerListFragment;->c(Lcom/samsung/privilege/fragment/WinnerListFragment;)V

    .line 81
    return-void
.end method

.method public a(Ljava/lang/String;JJJ)V
    .registers 12

    .prologue
    .line 90
    invoke-super/range {p0 .. p7}, Lcom/bzbs/marketplace/asynctask/FriendWinnerAsynctask$CallbackList;->a(Ljava/lang/String;JJJ)V

    .line 91
    iget-object v1, p0, Lcom/samsung/privilege/fragment/WinnerListFragment$2;->a:Lcom/samsung/privilege/fragment/WinnerListFragment;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/samsung/privilege/fragment/WinnerListFragment$2$1;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/fragment/WinnerListFragment$2$1;-><init>(Lcom/samsung/privilege/fragment/WinnerListFragment$2;)V

    .line 92
    invoke-virtual {v2}, Lcom/samsung/privilege/fragment/WinnerListFragment$2$1;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 91
    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/samsung/privilege/fragment/WinnerListFragment;->a(Lcom/samsung/privilege/fragment/WinnerListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 93
    iget-object v0, p0, Lcom/samsung/privilege/fragment/WinnerListFragment$2;->a:Lcom/samsung/privilege/fragment/WinnerListFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/WinnerListFragment;->b(Lcom/samsung/privilege/fragment/WinnerListFragment;)V

    .line 94
    return-void
.end method
