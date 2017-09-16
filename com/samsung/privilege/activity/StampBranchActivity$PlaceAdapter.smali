.class public Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "StampBranchActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter$HistoryViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/Place;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/samsung/privilege/activity/StampBranchActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/StampBranchActivity;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/Place;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 351
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;->b:Lcom/samsung/privilege/activity/StampBranchActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 352
    iput-object p2, p0, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;->a:Ljava/util/List;

    .line 353
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter$HistoryViewHolder;
    .registers 6

    .prologue
    .line 369
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04004d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 370
    new-instance v1, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter$HistoryViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter$HistoryViewHolder;-><init>(Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;Landroid/view/View;)V

    .line 371
    return-object v1
.end method

.method public a(Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter$HistoryViewHolder;I)V
    .registers 8

    .prologue
    .line 376
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;->b:Lcom/samsung/privilege/activity/StampBranchActivity;

    invoke-static {v0, p2}, Lcom/samsung/privilege/activity/StampBranchActivity;->c(Lcom/samsung/privilege/activity/StampBranchActivity;I)I

    .line 377
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/Place;

    .line 379
    iget-object v1, p1, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter$HistoryViewHolder;->b:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/bzbs/bean/Place;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v2, "###,###,###.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 382
    iget v2, v0, Lcom/bzbs/bean/Place;->distance:F

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 384
    iget-object v2, p1, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter$HistoryViewHolder;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;->b:Lcom/samsung/privilege/activity/StampBranchActivity;

    const v4, 0x7f090178

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/StampBranchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v1, p1, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter$HistoryViewHolder;->d:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter$1;-><init>(Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;Lcom/bzbs/bean/Place;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/Place;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 365
    return-void
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2

    .prologue
    .line 406
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 407
    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .prologue
    .line 347
    check-cast p1, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter$HistoryViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;->a(Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter$HistoryViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .prologue
    .line 347
    invoke-virtual {p0, p1, p2}, Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter;->a(Landroid/view/ViewGroup;I)Lcom/samsung/privilege/activity/StampBranchActivity$PlaceAdapter$HistoryViewHolder;

    move-result-object v0

    return-object v0
.end method
