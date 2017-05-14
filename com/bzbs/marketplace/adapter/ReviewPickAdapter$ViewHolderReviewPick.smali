.class Lcom/bzbs/marketplace/adapter/ReviewPickAdapter$ViewHolderReviewPick;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ReviewPickAdapter.java"


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;

.field itemPick:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1006d7
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 84
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter$ViewHolderReviewPick;->a:Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;

    .line 85
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 86
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 87
    return-void
.end method


# virtual methods
.method public a(ILcom/bzbs/marketplace/listener/OnTabItemListener;)V
    .registers 5

    .prologue
    .line 94
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter$ViewHolderReviewPick;->itemPick:Landroid/widget/ImageView;

    new-instance v1, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter$ViewHolderReviewPick$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter$ViewHolderReviewPick$1;-><init>(Lcom/bzbs/marketplace/adapter/ReviewPickAdapter$ViewHolderReviewPick;Lcom/bzbs/marketplace/listener/OnTabItemListener;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    return-void
.end method

.method public a(ILcom/bzbs/marketplace/model/SettingModel;)V
    .registers 5

    .prologue
    .line 90
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter$ViewHolderReviewPick;->a:Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;->b(Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter$ViewHolderReviewPick;->a:Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;

    invoke-static {v1}, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;->a(Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;)[Ljava/lang/Integer;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->c()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter$ViewHolderReviewPick;->itemPick:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 91
    return-void
.end method
