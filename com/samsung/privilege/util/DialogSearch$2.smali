.class final Lcom/samsung/privilege/util/DialogSearch$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "DialogSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogSearch;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Landroid/widget/EditText;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/EditText;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 143
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogSearch$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogSearch$2;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogSearch$2;->c:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/samsung/privilege/util/DialogSearch$2;->d:Ljava/lang/String;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 9

    .prologue
    .line 146
    invoke-static {}, Lcom/samsung/privilege/util/DialogSearch;->a()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/privilege/util/DialogSearch;->a(I)I

    .line 147
    invoke-static {}, Lcom/samsung/privilege/util/DialogSearch;->a()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/privilege/util/DialogSearch;->b(I)I

    .line 150
    invoke-static {}, Lcom/samsung/privilege/util/DialogSearch;->b()Z

    move-result v0

    if-nez v0, :cond_4c

    invoke-static {}, Lcom/samsung/privilege/util/DialogSearch;->c()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 151
    invoke-static {}, Lcom/samsung/privilege/util/DialogSearch;->d()I

    move-result v0

    invoke-static {}, Lcom/samsung/privilege/util/DialogSearch;->e()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {}, Lcom/samsung/privilege/util/DialogSearch;->f()I

    move-result v1

    if-lt v0, v1, :cond_4c

    .line 152
    invoke-static {}, Lcom/samsung/privilege/util/DialogSearch;->f()I

    move-result v0

    .line 153
    iget-object v1, p0, Lcom/samsung/privilege/util/DialogSearch$2;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogSearch$2;->b:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogSearch$2;->c:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogSearch$2;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/privilege/util/DialogSearch;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;I)V

    .line 156
    :cond_4c
    return-void
.end method
