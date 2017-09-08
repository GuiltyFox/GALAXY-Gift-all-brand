.class Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener$1;
.super Ljava/lang/Object;
.source "DashboardGiftRecyclerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;->c(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 3274
    iput-object p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener$1;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;

    iput-object p2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 3278
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener$1;->a:Ljava/lang/String;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3279
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_38

    .line 3280
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string/jumbo v2, "autoredeem"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener$1;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    const-string/jumbo v2, "header_en"

    invoke-static {v1, v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_39

    move-result v0

    if-eqz v0, :cond_38

    .line 3282
    :try_start_2d
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener$1;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;

    iget-object v1, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/bzbs/bean/DashboardItem;

    invoke-static {v1, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_38} :catch_3b

    .line 3291
    :cond_38
    :goto_38
    return-void

    .line 3288
    :catch_39
    move-exception v0

    goto :goto_38

    .line 3283
    :catch_3b
    move-exception v0

    goto :goto_38
.end method
