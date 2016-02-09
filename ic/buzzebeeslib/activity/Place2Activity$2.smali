.class Lic/buzzebeeslib/activity/Place2Activity$2;
.super Ljava/lang/Object;
.source "Place2Activity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/Place2Activity;->onCreateView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/Place2Activity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/Place2Activity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/Place2Activity$2;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/Place2Activity$2;)Lic/buzzebeeslib/activity/Place2Activity;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$2;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    return-object v0
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 11
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 233
    add-int v1, p2, p3

    .line 234
    .local v1, "lastInScreen":I
    iget-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity$2;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gAdapter:Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;
    invoke-static {v3}, Lic/buzzebeeslib/activity/Place2Activity;->access$20(Lic/buzzebeeslib/activity/Place2Activity;)Lic/buzzebeeslib/activity/Place2Activity$PlacesListNewAdapter;

    move-result-object v3

    if-eqz v3, :cond_5b

    iget-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity$2;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gArrayPlace:Ljava/util/ArrayList;
    invoke-static {v3}, Lic/buzzebeeslib/activity/Place2Activity;->access$21(Lic/buzzebeeslib/activity/Place2Activity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5b

    .line 235
    if-ne v1, p4, :cond_5b

    iget-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity$2;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gIsLoadingMore:Z
    invoke-static {v3}, Lic/buzzebeeslib/activity/Place2Activity;->access$22(Lic/buzzebeeslib/activity/Place2Activity;)Z

    move-result v3

    if-nez v3, :cond_5b

    iget-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity$2;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gIsHasData:Z
    invoke-static {v3}, Lic/buzzebeeslib/activity/Place2Activity;->access$23(Lic/buzzebeeslib/activity/Place2Activity;)Z

    move-result v3

    if-eqz v3, :cond_5b

    iget-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity$2;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gFetching:Z
    invoke-static {v3}, Lic/buzzebeeslib/activity/Place2Activity;->access$24(Lic/buzzebeeslib/activity/Place2Activity;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 237
    :try_start_30
    iget-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity$2;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    new-instance v4, Lic/buzzebeeslib/activity/Place2Activity$2$1;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/Place2Activity$2$1;-><init>(Lic/buzzebeeslib/activity/Place2Activity$2;)V

    invoke-static {v3, v4}, Lic/buzzebeeslib/activity/Place2Activity;->access$25(Lic/buzzebeeslib/activity/Place2Activity;Ljava/lang/Runnable;)V

    .line 245
    new-instance v2, Ljava/lang/Thread;

    const/4 v3, 0x0

    iget-object v4, p0, Lic/buzzebeeslib/activity/Place2Activity$2;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lic/buzzebeeslib/activity/Place2Activity;->access$26(Lic/buzzebeeslib/activity/Place2Activity;)Ljava/lang/Runnable;

    move-result-object v4

    const-string v5, "MagentoBackground"

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 246
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 248
    iget-object v3, p0, Lic/buzzebeeslib/activity/Place2Activity$2;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->footerListView:Landroid/view/View;
    invoke-static {v3}, Lic/buzzebeeslib/activity/Place2Activity;->access$27(Lic/buzzebeeslib/activity/Place2Activity;)Landroid/view/View;

    move-result-object v3

    sget v4, Lic/buzzebeeslib/R$idWallListFooter;->layoutRoot:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_5b} :catch_5c

    .line 254
    .end local v2    # "thread":Ljava/lang/Thread;
    :cond_5b
    :goto_5b
    return-void

    .line 249
    :catch_5c
    move-exception v0

    .line 250
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "buzzebees.placeslist.fragment"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error While Load More Place...:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 225
    const/4 v0, 0x2

    if-ne p2, v0, :cond_e

    .line 226
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$2;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity;->access$16(Lic/buzzebeeslib/activity/Place2Activity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setPauseWork(Z)V

    .line 230
    :goto_d
    return-void

    .line 228
    :cond_e
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$2;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity;->access$16(Lic/buzzebeeslib/activity/Place2Activity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setPauseWork(Z)V

    goto :goto_d
.end method
