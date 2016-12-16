.class public Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DashboardGiftRecyclerFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/DashboardRow;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/DashboardRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 895
    iput-object p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 896
    iput-object p2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a:Ljava/util/List;

    .line 897
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardRow;)V
    .registers 13

    .prologue
    const v9, 0x7f090441

    const v8, 0x7f0202d9

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 1146
    check-cast p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;

    .line 1147
    iget-object v0, p2, Lcom/bzbs/bean/DashboardRow;->dashboardItemA:Lcom/bzbs/bean/DashboardItem;

    .line 1148
    iget-object v1, p2, Lcom/bzbs/bean/DashboardRow;->dashboardItemB:Lcom/bzbs/bean/DashboardItem;

    .line 1150
    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bzbs/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/bumptech/glide/DrawableTypeRequest;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1152
    iget-object v2, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->i:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1153
    iget-object v2, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->j:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1154
    iget-object v2, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->k:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/bzbs/bean/DashboardItem;->campaignremaining:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1155
    iget-object v2, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->l:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/bzbs/bean/DashboardItem;->campaignstatus:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1157
    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_174

    .line 1158
    iget-object v2, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1163
    :goto_5e
    iget-boolean v2, v0, Lcom/bzbs/bean/DashboardItem;->autoredeem_showcode:Z

    if-ne v2, v7, :cond_1a7

    .line 1164
    iget-object v2, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->g:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->g:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v3

    or-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1165
    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget v3, v0, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/data/UserLogin;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1166
    if-eqz v2, :cond_1a0

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a0

    .line 1167
    iget-object v3, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget v4, v0, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/data/UserLogin;->s(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1168
    if-eqz v3, :cond_17b

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17b

    .line 1169
    iget-object v2, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1170
    iget-object v2, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1177
    :cond_af
    :goto_af
    iget-object v2, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1185
    :goto_b4
    iget-object v2, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->d:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$1;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1192
    if-eqz v1, :cond_1e5

    .line 1193
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v1}, Lcom/bzbs/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/bumptech/glide/DrawableTypeRequest;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1195
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->s:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1196
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->t:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1197
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->u:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/bzbs/bean/DashboardItem;->campaignremaining:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1198
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->v:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/bzbs/bean/DashboardItem;->campaignstatus:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1200
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1ae

    .line 1201
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1206
    :goto_10e
    iget-boolean v0, v1, Lcom/bzbs/bean/DashboardItem;->autoredeem_showcode:Z

    if-ne v0, v7, :cond_1df

    .line 1207
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->q:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->q:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1208
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v2, v1, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bzbs/data/UserLogin;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1209
    if-eqz v0, :cond_1d9

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d9

    .line 1210
    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget v3, v1, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/data/UserLogin;->s(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1211
    if-eqz v2, :cond_1b5

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b5

    .line 1212
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1213
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1220
    :cond_15f
    :goto_15f
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1228
    :goto_164
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->n:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$2;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$2;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1235
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->m:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    .line 1239
    :goto_173
    return-void

    .line 1160
    :cond_174
    iget-object v2, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5e

    .line 1172
    :cond_17b
    iget-object v3, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1173
    iget-object v2, v0, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    if-eqz v2, :cond_af

    iget-object v2, v0, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_af

    .line 1174
    iget-object v2, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_af

    .line 1179
    :cond_1a0
    iget-object v2, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_b4

    .line 1182
    :cond_1a7
    iget-object v2, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_b4

    .line 1203
    :cond_1ae
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_10e

    .line 1215
    :cond_1b5
    iget-object v2, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->q:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1216
    iget-object v0, v1, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    if-eqz v0, :cond_15f

    iget-object v0, v1, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15f

    .line 1217
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->r:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15f

    .line 1222
    :cond_1d9
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_164

    .line 1225
    :cond_1df
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_164

    .line 1237
    :cond_1e5
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;->m:Landroid/support/v7/widget/CardView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    goto :goto_173
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V
    .registers 3

    .prologue
    .line 891
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V

    return-void
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V
    .registers 5

    .prologue
    .line 1082
    check-cast p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_cat_header;

    .line 1084
    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->cat_header_en:Ljava/lang/String;

    if-eqz v0, :cond_71

    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->cat_header_en:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 1085
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1086
    if-eqz v0, :cond_69

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 1087
    const-string/jumbo v1, "1054"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1088
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_cat_header;->d:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/bzbs/bean/DashboardItem;->cat_header_th:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1103
    :cond_36
    :goto_36
    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->cat_header_image:Ljava/lang/String;

    if-eqz v0, :cond_60

    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->cat_header_image:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 1105
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p2, Lcom/bzbs/bean/DashboardItem;->cat_header_image:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_cat_header;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1107
    :cond_60
    return-void

    .line 1090
    :cond_61
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_cat_header;->d:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/bzbs/bean/DashboardItem;->cat_header_en:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_36

    .line 1093
    :cond_69
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_cat_header;->d:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/bzbs/bean/DashboardItem;->cat_header_en:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_36

    .line 1097
    :cond_71
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    const-string/jumbo v1, "header"

    invoke-static {v0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1098
    if-eqz v0, :cond_36

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 1099
    iget-object v1, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_cat_header;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_36
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardRow;)V
    .registers 14

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v8, 0x8

    .line 1242
    check-cast p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;

    .line 1243
    iget-object v3, p2, Lcom/bzbs/bean/DashboardRow;->dashboardItemA:Lcom/bzbs/bean/DashboardItem;

    .line 1244
    iget-object v4, p2, Lcom/bzbs/bean/DashboardRow;->dashboardItemB:Lcom/bzbs/bean/DashboardItem;

    .line 1246
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v3}, Lcom/bzbs/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    const v5, 0x7f0202d9

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/DrawableTypeRequest;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget-object v5, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v5, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1248
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v5, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$3;

    invoke-direct {v5, p0, p1, v3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$3;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v0, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1267
    iget-object v0, v3, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    if-eqz v0, :cond_223

    iget-object v0, v3, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_223

    .line 1269
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->h:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 1274
    :goto_59
    iget-object v5, v3, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    if-eqz v5, :cond_22b

    iget-object v5, v3, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22b

    .line 1276
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->g:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 1281
    :goto_74
    iget v5, v3, Lcom/bzbs/bean/DashboardItem;->campaignpoint:I

    if-lez v5, :cond_25d

    .line 1283
    iget v0, v3, Lcom/bzbs/bean/DashboardItem;->campaignpoint:I

    if-lt v0, v9, :cond_232

    .line 1284
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->i:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v3, Lcom/bzbs/bean/DashboardItem;->campaignpoint:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    const v7, 0x7f090361

    invoke-virtual {v6, v7}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 1292
    :goto_a5
    if-ne v0, v1, :cond_264

    .line 1293
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1294
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1300
    :goto_b1
    iget-boolean v0, v3, Lcom/bzbs/bean/DashboardItem;->autoredeem_showcode:Z

    if-ne v0, v1, :cond_29f

    .line 1301
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->k:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->k:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v5

    or-int/lit8 v5, v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1302
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v5, v3, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/bzbs/data/UserLogin;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1303
    if-eqz v0, :cond_298

    const-string/jumbo v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_298

    .line 1304
    iget-object v5, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v5}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget v6, v3, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/data/UserLogin;->s(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1305
    if-eqz v5, :cond_270

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_270

    .line 1306
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1307
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1314
    :cond_102
    :goto_102
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1322
    :goto_107
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->d:Landroid/widget/RelativeLayout;

    new-instance v5, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$4;

    invoke-direct {v5, p0, v3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$4;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1329
    if-eqz v4, :cond_329

    .line 1330
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v4}, Lcom/bzbs/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    const v3, 0x7f0202d9

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1332
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->p:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v3, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$5;

    invoke-direct {v3, p0, p1, v4}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$5;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1353
    iget-object v0, v4, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    if-eqz v0, :cond_2a6

    iget-object v0, v4, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a6

    .line 1355
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->s:Landroid/widget/TextView;

    iget-object v3, v4, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 1360
    :goto_160
    iget-object v3, v4, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    if-eqz v3, :cond_2ae

    iget-object v3, v4, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2ae

    .line 1362
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->r:Landroid/widget/TextView;

    iget-object v3, v4, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 1367
    :goto_17b
    iget v3, v4, Lcom/bzbs/bean/DashboardItem;->campaignpoint:I

    if-lez v3, :cond_2e0

    .line 1369
    iget v0, v4, Lcom/bzbs/bean/DashboardItem;->campaignpoint:I

    if-lt v0, v9, :cond_2b5

    .line 1370
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->t:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v4, Lcom/bzbs/bean/DashboardItem;->campaignpoint:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    const v6, 0x7f090361

    invoke-virtual {v5, v6}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 1378
    :goto_1ac
    if-ne v0, v1, :cond_2e7

    .line 1379
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1380
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->x:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1386
    :goto_1b8
    iget-boolean v0, v4, Lcom/bzbs/bean/DashboardItem;->autoredeem_showcode:Z

    if-ne v0, v1, :cond_322

    .line 1387
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->v:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->v:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1388
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, v4, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1389
    if-eqz v0, :cond_31b

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31b

    .line 1390
    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v3, v4, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/bzbs/data/UserLogin;->s(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1391
    if-eqz v1, :cond_2f3

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f3

    .line 1392
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1393
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1400
    :cond_209
    :goto_209
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1408
    :goto_20e
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->o:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$6;

    invoke-direct {v1, p0, v4}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$6;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1415
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1416
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->n:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    .line 1421
    :goto_222
    return-void

    .line 1271
    :cond_223
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    move v0, v2

    goto/16 :goto_59

    .line 1278
    :cond_22b
    iget-object v5, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->g:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_74

    .line 1286
    :cond_232
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->i:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v3, Lcom/bzbs/bean/DashboardItem;->campaignpoint:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    const v7, 0x7f09035c

    invoke-virtual {v6, v7}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    goto/16 :goto_a5

    .line 1289
    :cond_25d
    iget-object v5, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->i:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a5

    .line 1296
    :cond_264
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1297
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->m:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b1

    .line 1309
    :cond_270
    iget-object v5, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->k:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1310
    iget-object v0, v3, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    if-eqz v0, :cond_102

    iget-object v0, v3, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_102

    .line 1311
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->l:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v5}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f090441

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_102

    .line 1316
    :cond_298
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_107

    .line 1319
    :cond_29f
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_107

    .line 1357
    :cond_2a6
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    move v0, v2

    goto/16 :goto_160

    .line 1364
    :cond_2ae
    iget-object v3, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->r:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_17b

    .line 1372
    :cond_2b5
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->t:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v4, Lcom/bzbs/bean/DashboardItem;->campaignpoint:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    const v6, 0x7f09035c

    invoke-virtual {v5, v6}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    goto/16 :goto_1ac

    .line 1375
    :cond_2e0
    iget-object v3, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->t:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1ac

    .line 1382
    :cond_2e7
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1383
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->x:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1b8

    .line 1395
    :cond_2f3
    iget-object v1, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1396
    iget-object v0, v4, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    if-eqz v0, :cond_209

    iget-object v0, v4, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_209

    .line 1397
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v3, 0x7f090441

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_209

    .line 1402
    :cond_31b
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_20e

    .line 1405
    :cond_322
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_20e

    .line 1418
    :cond_329
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1419
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;->n:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    goto/16 :goto_222
.end method

.method static synthetic b(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V
    .registers 3

    .prologue
    .line 891
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->e(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V

    return-void
.end method

.method private c(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 1110
    check-cast p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_webview;

    .line 1112
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_webview;->c:Landroid/webkit/WebView;

    iget-object v1, p2, Lcom/bzbs/bean/DashboardItem;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1114
    iget-boolean v0, p2, Lcom/bzbs/bean/DashboardItem;->web_dis_autoresize:Z

    if-nez v0, :cond_20

    .line 1115
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_webview;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1116
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_webview;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 1119
    :cond_20
    iget-boolean v0, p2, Lcom/bzbs/bean/DashboardItem;->web_dis_clearcache:Z

    if-nez v0, :cond_2e

    .line 1120
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_webview;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 1121
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_webview;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 1124
    :cond_2e
    iget-boolean v0, p2, Lcom/bzbs/bean/DashboardItem;->web_dis_javascript:Z

    if-nez v0, :cond_3b

    .line 1125
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_webview;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1128
    :cond_3b
    iget-boolean v0, p2, Lcom/bzbs/bean/DashboardItem;->web_dis_javascript_cowa:Z

    if-nez v0, :cond_48

    .line 1129
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_webview;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 1132
    :cond_48
    iget-boolean v0, p2, Lcom/bzbs/bean/DashboardItem;->web_dis_scrollbar:Z

    if-nez v0, :cond_63

    .line 1133
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_webview;->c:Landroid/webkit/WebView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 1134
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_webview;->c:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    .line 1135
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_webview;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 1136
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_webview;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 1139
    :cond_63
    iget-boolean v0, p2, Lcom/bzbs/bean/DashboardItem;->web_dis_zoom:Z

    if-nez v0, :cond_79

    .line 1140
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_webview;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1141
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_webview;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 1143
    :cond_79
    return-void
.end method

.method static synthetic c(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V
    .registers 3

    .prologue
    .line 891
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->f(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V

    return-void
.end method

.method private d(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 1424
    check-cast p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium_pager;

    .line 1426
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    new-instance v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p2, Lcom/bzbs/bean/DashboardItem;->sub_dashboard_items:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/app/Activity;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;)Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;

    .line 1427
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium_pager;->c:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-static {v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->g(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/PagerAdapter;)V

    .line 1428
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium_pager;->c:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 1429
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium_pager;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setClipChildren(Z)V

    .line 1431
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->h(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->sub_dashboard_items:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->image_url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_77

    .line 1432
    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-static {v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->h(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->sub_dashboard_items:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->image_url:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1433
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    const-wide/16 v2, 0x1388

    iget-object v1, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium_pager;->c:Landroid/support/v4/view/ViewPager;

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;JLandroid/support/v4/view/ViewPager;)V

    .line 1436
    :cond_77
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium_pager;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$7;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$7;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium_pager;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1453
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium_pager;->e:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$8;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$8;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium_pager;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1469
    return-void
.end method

.method static synthetic d(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V
    .registers 3

    .prologue
    .line 891
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->h(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V

    return-void
.end method

.method private e(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V
    .registers 7

    .prologue
    const/16 v3, 0x8

    .line 1472
    check-cast p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium_autoredeem;

    .line 1474
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bzbs/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    const v1, 0x7f0202d8

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium_autoredeem;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1476
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium_autoredeem;->h:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1477
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium_autoredeem;->i:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1478
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium_autoredeem;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bzbs/bean/DashboardItem;->GetTypeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1479
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium_autoredeem;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bzbs/bean/DashboardItem;->GetPointString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1481
    iget-boolean v0, p2, Lcom/bzbs/bean/DashboardItem;->autoredeem_showcode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e4

    .line 1482
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium_autoredeem;->f:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium_autoredeem;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1483
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p2, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1484
    if-eqz v0, :cond_de

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_de

    .line 1485
    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p2, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->s(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1486
    if-eqz v1, :cond_b7

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b7

    .line 1487
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium_autoredeem;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1488
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium_autoredeem;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1495
    :cond_a6
    :goto_a6
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium_autoredeem;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1503
    :goto_ac
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium_autoredeem;->c:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$9;

    invoke-direct {v1, p0, p2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$9;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1509
    return-void

    .line 1490
    :cond_b7
    iget-object v1, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium_autoredeem;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1491
    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    if-eqz v0, :cond_a6

    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    .line 1492
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium_autoredeem;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f090441

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a6

    .line 1497
    :cond_de
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium_autoredeem;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_ac

    .line 1500
    :cond_e4
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium_autoredeem;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_ac
.end method

.method private f(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1512
    check-cast p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium;

    .line 1514
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bzbs/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    const v1, 0x7f0202d8

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1516
    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    if-eqz v0, :cond_b1

    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b1

    .line 1517
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1518
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1519
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium;->e:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1524
    :goto_4f
    iget-boolean v0, p2, Lcom/bzbs/bean/DashboardItem;->autoredeem_showcode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e4

    .line 1525
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium;->g:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1526
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p2, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1527
    if-eqz v0, :cond_de

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_de

    .line 1528
    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p2, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->s(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1529
    if-eqz v1, :cond_b7

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b7

    .line 1530
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1531
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1538
    :cond_a1
    :goto_a1
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1546
    :goto_a6
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium;->c:Landroid/support/v7/widget/CardView;

    new-instance v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$10;

    invoke-direct {v1, p0, p2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$10;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1552
    return-void

    .line 1521
    :cond_b1
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4f

    .line 1533
    :cond_b7
    iget-object v1, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1534
    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    if-eqz v0, :cond_a1

    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    .line 1535
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f090441

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a1

    .line 1540
    :cond_de
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a6

    .line 1543
    :cond_e4
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a6
.end method

.method private g(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V
    .registers 16

    .prologue
    const/16 v12, 0x8

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 1555
    check-cast p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;

    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    .line 1563
    :goto_d
    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->sub_dashboard_items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4f

    .line 1564
    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->sub_dashboard_items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/DashboardItem;

    .line 1565
    iget-object v10, v0, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    if-eqz v10, :cond_2e

    iget-object v10, v0, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2e

    move v5, v9

    move v8, v9

    .line 1569
    :cond_2e
    iget-object v10, v0, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    if-eqz v10, :cond_3f

    iget-object v10, v0, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3f

    move v5, v9

    move v7, v9

    .line 1573
    :cond_3f
    iget v10, v0, Lcom/bzbs/bean/DashboardItem;->campaignpoint:I

    if-lez v10, :cond_45

    move v5, v9

    move v6, v9

    .line 1577
    :cond_45
    if-nez v1, :cond_4b

    .line 1578
    iget v4, v0, Lcom/bzbs/bean/DashboardItem;->image_width:I

    .line 1579
    iget v3, v0, Lcom/bzbs/bean/DashboardItem;->image_height:I

    .line 1563
    :cond_4b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 1582
    :cond_4f
    if-ne v8, v9, :cond_119

    .line 1583
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1587
    :goto_56
    if-ne v7, v9, :cond_120

    .line 1588
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1592
    :goto_5d
    if-ne v6, v9, :cond_127

    .line 1593
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1597
    :goto_64
    if-ne v5, v9, :cond_12e

    .line 1598
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1599
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1604
    :goto_70
    if-nez v4, :cond_74

    const/16 v4, 0x258

    .line 1605
    :cond_74
    if-nez v3, :cond_78

    const/16 v3, 0x190

    .line 1606
    :cond_78
    if-lez v4, :cond_9a

    if-lez v3, :cond_9a

    .line 1608
    sget v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a:I

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0b0024

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 1609
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/2addr v3, v0

    div-int/2addr v3, v4

    invoke-direct {v1, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1610
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1613
    :cond_9a
    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->campaign_rotate_background:Ljava/lang/String;

    if-eqz v0, :cond_b4

    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->campaign_rotate_background:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b4

    .line 1614
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p2, Lcom/bzbs/bean/DashboardItem;->campaign_rotate_background:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1617
    :cond_b4
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    new-instance v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;

    iget-object v3, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p2, Lcom/bzbs/bean/DashboardItem;->sub_dashboard_items:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v3, v4}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/app/Activity;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;)Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;

    .line 1618
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;->e:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-static {v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->g(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/PagerAdapter;)V

    .line 1619
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;->e:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 1620
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setClipChildren(Z)V

    .line 1624
    iget v0, p2, Lcom/bzbs/bean/DashboardItem;->campaign_rotate_padding:I

    if-lez v0, :cond_f7

    .line 1625
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;->e:Landroid/support/v4/view/ViewPager;

    iget v1, p2, Lcom/bzbs/bean/DashboardItem;->campaign_rotate_padding:I

    iget v3, p2, Lcom/bzbs/bean/DashboardItem;->campaign_rotate_padding:I

    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/support/v4/view/ViewPager;->setPadding(IIII)V

    .line 1626
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setClipToPadding(Z)V

    .line 1629
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;->d:Landroid/widget/RelativeLayout;

    iget v1, p2, Lcom/bzbs/bean/DashboardItem;->campaign_rotate_padding:I

    iget v3, p2, Lcom/bzbs/bean/DashboardItem;->campaign_rotate_padding:I

    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 1632
    :cond_f7
    iget v0, p2, Lcom/bzbs/bean/DashboardItem;->campaign_rotate_padding:I

    if-nez v0, :cond_104

    .line 1635
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    const-wide/16 v2, 0x1388

    iget-object v1, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;->e:Landroid/support/v4/view/ViewPager;

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;JLandroid/support/v4/view/ViewPager;)V

    .line 1639
    :cond_104
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;->f:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$11;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$11;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1656
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;->g:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$12;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$12;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1672
    return-void

    .line 1585
    :cond_119
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_56

    .line 1590
    :cond_120
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5d

    .line 1595
    :cond_127
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_64

    .line 1601
    :cond_12e
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;->l:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1602
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_70
.end method

.method private h(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V
    .registers 7

    .prologue
    const/16 v3, 0x8

    .line 1675
    check-cast p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_autoredeem;

    .line 1677
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bzbs/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    const v1, 0x7f0202d9

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_autoredeem;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1679
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_autoredeem;->h:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1680
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_autoredeem;->i:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1681
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_autoredeem;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bzbs/bean/DashboardItem;->GetTypeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1682
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_autoredeem;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bzbs/bean/DashboardItem;->GetPointString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1684
    iget-boolean v0, p2, Lcom/bzbs/bean/DashboardItem;->autoredeem_showcode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e4

    .line 1685
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_autoredeem;->f:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_autoredeem;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1686
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p2, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1687
    if-eqz v0, :cond_de

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_de

    .line 1688
    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p2, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->s(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1689
    if-eqz v1, :cond_b7

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b7

    .line 1690
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_autoredeem;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1691
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_autoredeem;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1698
    :cond_a6
    :goto_a6
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_autoredeem;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1706
    :goto_ac
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_autoredeem;->c:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$13;

    invoke-direct {v1, p0, p2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$13;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1712
    return-void

    .line 1693
    :cond_b7
    iget-object v1, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_autoredeem;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1694
    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    if-eqz v0, :cond_a6

    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    .line 1695
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_autoredeem;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f090441

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a6

    .line 1700
    :cond_de
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_autoredeem;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_ac

    .line 1703
    :cond_e4
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_autoredeem;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_ac
.end method


# virtual methods
.method public a(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/bean/DashboardRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 904
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 905
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v6, 0x8

    .line 1715
    check-cast p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;

    .line 1717
    iget v0, p2, Lcom/bzbs/bean/DashboardItem;->image_width:I

    if-nez v0, :cond_e

    const/16 v0, 0x258

    iput v0, p2, Lcom/bzbs/bean/DashboardItem;->image_width:I

    .line 1718
    :cond_e
    iget v0, p2, Lcom/bzbs/bean/DashboardItem;->image_height:I

    if-nez v0, :cond_16

    const/16 v0, 0x190

    iput v0, p2, Lcom/bzbs/bean/DashboardItem;->image_height:I

    .line 1719
    :cond_16
    iget v0, p2, Lcom/bzbs/bean/DashboardItem;->image_width:I

    if-lez v0, :cond_18d

    iget v0, p2, Lcom/bzbs/bean/DashboardItem;->image_height:I

    if-lez v0, :cond_18d

    .line 1721
    sget v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a:I

    iget-object v3, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    .line 1722
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p2, Lcom/bzbs/bean/DashboardItem;->image_height:I

    mul-int/2addr v4, v0

    iget v5, p2, Lcom/bzbs/bean/DashboardItem;->image_width:I

    div-int/2addr v4, v5

    invoke-direct {v3, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1723
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1725
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1726
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bzbs/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->b()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->c()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1732
    :goto_6a
    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->background:Ljava/lang/String;

    if-eqz v0, :cond_84

    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->background:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    .line 1733
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->g:Landroid/widget/LinearLayout;

    iget-object v3, p2, Lcom/bzbs/bean/DashboardItem;->background:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1737
    :cond_84
    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    if-eqz v0, :cond_1b8

    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b8

    .line 1739
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->i:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 1743
    :goto_9f
    iget-object v3, p2, Lcom/bzbs/bean/DashboardItem;->line1_color:Ljava/lang/String;

    if-eqz v3, :cond_b9

    iget-object v3, p2, Lcom/bzbs/bean/DashboardItem;->line1_color:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b9

    .line 1744
    iget-object v3, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->i:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/bzbs/bean/DashboardItem;->line1_color:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1747
    :cond_b9
    iget-object v3, p2, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    if-eqz v3, :cond_1c0

    iget-object v3, p2, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c0

    .line 1749
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->h:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 1753
    :goto_d4
    iget-object v3, p2, Lcom/bzbs/bean/DashboardItem;->line2_color:Ljava/lang/String;

    if-eqz v3, :cond_ee

    iget-object v3, p2, Lcom/bzbs/bean/DashboardItem;->line2_color:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ee

    .line 1754
    iget-object v3, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->h:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/bzbs/bean/DashboardItem;->line2_color:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1757
    :cond_ee
    iget v3, p2, Lcom/bzbs/bean/DashboardItem;->campaignpoint:I

    if-lez v3, :cond_1f2

    .line 1759
    iget v0, p2, Lcom/bzbs/bean/DashboardItem;->campaignpoint:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_1c7

    .line 1760
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->j:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p2, Lcom/bzbs/bean/DashboardItem;->campaignpoint:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    const v5, 0x7f090361

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 1768
    :goto_120
    if-ne v0, v1, :cond_1f9

    .line 1769
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1770
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1776
    :goto_12c
    iget-boolean v0, p2, Lcom/bzbs/bean/DashboardItem;->autoredeem_showcode:Z

    if-ne v0, v1, :cond_234

    .line 1777
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->m:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->m:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1778
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p2, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1779
    if-eqz v0, :cond_22d

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22d

    .line 1780
    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v3, p2, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/bzbs/data/UserLogin;->s(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1781
    if-eqz v1, :cond_205

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_205

    .line 1782
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1783
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1790
    :cond_17d
    :goto_17d
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1798
    :goto_182
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->c:Landroid/support/v7/widget/CardView;

    new-instance v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$14;

    invoke-direct {v1, p0, p2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$14;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1804
    return-void

    .line 1728
    :cond_18d
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1729
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bzbs/bean/DashboardItem;->image_url_large()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    const v3, 0x7f0202d9

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/DrawableTypeRequest;->a(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto/16 :goto_6a

    .line 1741
    :cond_1b8
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    move v0, v2

    goto/16 :goto_9f

    .line 1751
    :cond_1c0
    iget-object v3, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->h:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_d4

    .line 1762
    :cond_1c7
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->j:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p2, Lcom/bzbs/bean/DashboardItem;->campaignpoint:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    const v5, 0x7f09035c

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    goto/16 :goto_120

    .line 1765
    :cond_1f2
    iget-object v3, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->j:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_120

    .line 1772
    :cond_1f9
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1773
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->k:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_12c

    .line 1785
    :cond_205
    iget-object v1, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1786
    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    if-eqz v0, :cond_17d

    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17d

    .line 1787
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v3, 0x7f090441

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_17d

    .line 1792
    :cond_22d
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_182

    .line 1795
    :cond_234
    iget-object v0, p1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_182
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a:Ljava/util/List;

    if-nez v0, :cond_6

    .line 1809
    const/4 v0, 0x0

    .line 1811
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItemViewType(I)I
    .registers 5

    .prologue
    .line 963
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/DashboardRow;

    .line 965
    invoke-virtual {v0}, Lcom/bzbs/bean/DashboardRow;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "hashtag"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 966
    const/4 v0, 0x0

    .line 1018
    :goto_16
    return v0

    .line 967
    :cond_17
    invoke-virtual {v0}, Lcom/bzbs/bean/DashboardRow;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "cat_header"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 969
    const v0, 0x7f0400e5

    goto :goto_16

    .line 970
    :cond_28
    invoke-virtual {v0}, Lcom/bzbs/bean/DashboardRow;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "webview"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 972
    invoke-virtual {v0}, Lcom/bzbs/bean/DashboardRow;->getSize()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "medium"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 973
    const v0, 0x7f0400f2

    goto :goto_16

    .line 974
    :cond_46
    invoke-virtual {v0}, Lcom/bzbs/bean/DashboardRow;->getSize()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "big"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 975
    const v0, 0x7f0400f1

    goto :goto_16

    .line 977
    :cond_57
    const v0, 0x7f0400f0

    goto :goto_16

    .line 979
    :cond_5b
    invoke-virtual {v0}, Lcom/bzbs/bean/DashboardRow;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wallet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 981
    const v0, 0x7f0400ed

    goto :goto_16

    .line 982
    :cond_6c
    invoke-virtual {v0}, Lcom/bzbs/bean/DashboardRow;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wallet_card"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 983
    const v0, 0x7f0400ee

    goto :goto_16

    .line 984
    :cond_7d
    invoke-virtual {v0}, Lcom/bzbs/bean/DashboardRow;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wallet_history"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 985
    const v0, 0x7f0400ef

    goto :goto_16

    .line 987
    :cond_8e
    invoke-virtual {v0}, Lcom/bzbs/bean/DashboardRow;->getSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "small"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 988
    invoke-virtual {v0}, Lcom/bzbs/bean/DashboardRow;->getLayout()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "premium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 990
    const v0, 0x7f0400ec

    goto/16 :goto_16

    .line 993
    :cond_b1
    const v0, 0x7f0400eb

    goto/16 :goto_16

    .line 995
    :cond_b6
    invoke-virtual {v0}, Lcom/bzbs/bean/DashboardRow;->getSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "medium"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f4

    .line 996
    invoke-virtual {v0}, Lcom/bzbs/bean/DashboardRow;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "campaign_rotate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dd

    .line 998
    const v0, 0x7f0400e8

    goto/16 :goto_16

    .line 1000
    :cond_dd
    invoke-virtual {v0}, Lcom/bzbs/bean/DashboardRow;->getLayout()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "premium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 1002
    const v0, 0x7f0400e7

    goto/16 :goto_16

    .line 1005
    :cond_ef
    const v0, 0x7f0400e6

    goto/16 :goto_16

    .line 1009
    :cond_f4
    invoke-virtual {v0}, Lcom/bzbs/bean/DashboardRow;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "campaign_rotate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 1011
    const v0, 0x7f0400e4

    goto/16 :goto_16

    .line 1013
    :cond_10a
    invoke-virtual {v0}, Lcom/bzbs/bean/DashboardRow;->getLayout()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "premium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 1015
    const v0, 0x7f0400e3

    goto/16 :goto_16

    .line 1018
    :cond_11c
    const v0, 0x7f0400e2

    goto/16 :goto_16
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2

    .prologue
    .line 1817
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1818
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 10

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/bzbs/bean/DashboardRow;

    .line 1029
    invoke-virtual {v6}, Lcom/bzbs/bean/DashboardRow;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hashtag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1077
    :goto_16
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    const-string/jumbo v1, "View"

    iget-object v2, v6, Lcom/bzbs/bean/DashboardRow;->dashboardItemA:Lcom/bzbs/bean/DashboardItem;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;Lcom/bzbs/bean/DashboardItem;)V

    .line 1078
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    const-string/jumbo v1, "View"

    iget-object v2, v6, Lcom/bzbs/bean/DashboardRow;->dashboardItemB:Lcom/bzbs/bean/DashboardItem;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;Lcom/bzbs/bean/DashboardItem;)V

    .line 1079
    return-void

    .line 1031
    :cond_2b
    invoke-virtual {v6}, Lcom/bzbs/bean/DashboardRow;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cat_header"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1032
    iget-object v0, v6, Lcom/bzbs/bean/DashboardRow;->dashboardItemA:Lcom/bzbs/bean/DashboardItem;

    invoke-direct {p0, p1, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V

    goto :goto_16

    .line 1033
    :cond_3e
    invoke-virtual {v6}, Lcom/bzbs/bean/DashboardRow;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "webview"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 1034
    invoke-virtual {v6}, Lcom/bzbs/bean/DashboardRow;->getSize()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "medium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1035
    iget-object v0, v6, Lcom/bzbs/bean/DashboardRow;->dashboardItemA:Lcom/bzbs/bean/DashboardItem;

    invoke-direct {p0, p1, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V

    goto :goto_16

    .line 1036
    :cond_5e
    invoke-virtual {v6}, Lcom/bzbs/bean/DashboardRow;->getSize()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "big"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1037
    iget-object v0, v6, Lcom/bzbs/bean/DashboardRow;->dashboardItemA:Lcom/bzbs/bean/DashboardItem;

    invoke-direct {p0, p1, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V

    goto :goto_16

    .line 1039
    :cond_71
    iget-object v0, v6, Lcom/bzbs/bean/DashboardRow;->dashboardItemA:Lcom/bzbs/bean/DashboardItem;

    invoke-direct {p0, p1, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V

    goto :goto_16

    .line 1041
    :cond_77
    invoke-virtual {v6}, Lcom/bzbs/bean/DashboardRow;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wallet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 1042
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-static {v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, v6, Lcom/bzbs/bean/DashboardRow;->dashboardItemA:Lcom/bzbs/bean/DashboardItem;

    iget-object v3, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    const-string/jumbo v5, "header_en"

    invoke-static {v3, v5}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->a(Landroid/app/Activity;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Landroid/os/Handler;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 1043
    :cond_a3
    invoke-virtual {v6}, Lcom/bzbs/bean/DashboardRow;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wallet_card"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 1044
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-static {v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, v6, Lcom/bzbs/bean/DashboardRow;->dashboardItemA:Lcom/bzbs/bean/DashboardItem;

    iget-object v3, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    const-string/jumbo v5, "header_en"

    invoke-static {v3, v5}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/holder/DashboardHolder_wallet_card;->a(Landroid/app/Activity;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Landroid/os/Handler;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 1045
    :cond_cf
    invoke-virtual {v6}, Lcom/bzbs/bean/DashboardRow;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wallet_history"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 1046
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-static {v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, v6, Lcom/bzbs/bean/DashboardRow;->dashboardItemA:Lcom/bzbs/bean/DashboardItem;

    iget-object v3, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    const-string/jumbo v5, "header_en"

    invoke-static {v3, v5}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/holder/DashboardHolder_wallet_history;->a(Landroid/app/Activity;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Landroid/os/Handler;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 1048
    :cond_fb
    invoke-virtual {v6}, Lcom/bzbs/bean/DashboardRow;->getSize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "small"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_123

    .line 1049
    invoke-virtual {v6}, Lcom/bzbs/bean/DashboardRow;->getLayout()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "premium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 1050
    invoke-direct {p0, p1, v6}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardRow;)V

    goto/16 :goto_16

    .line 1052
    :cond_11e
    invoke-direct {p0, p1, v6}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardRow;)V

    goto/16 :goto_16

    .line 1054
    :cond_123
    invoke-virtual {v6}, Lcom/bzbs/bean/DashboardRow;->getSize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "medium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_167

    .line 1055
    invoke-virtual {v6}, Lcom/bzbs/bean/DashboardRow;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "campaign_rotate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14c

    .line 1056
    iget-object v0, v6, Lcom/bzbs/bean/DashboardRow;->dashboardItemA:Lcom/bzbs/bean/DashboardItem;

    invoke-direct {p0, p1, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->d(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V

    goto/16 :goto_16

    .line 1058
    :cond_14c
    invoke-virtual {v6}, Lcom/bzbs/bean/DashboardRow;->getLayout()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "premium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_160

    .line 1059
    iget-object v0, v6, Lcom/bzbs/bean/DashboardRow;->dashboardItemA:Lcom/bzbs/bean/DashboardItem;

    invoke-direct {p0, p1, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->e(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V

    goto/16 :goto_16

    .line 1061
    :cond_160
    iget-object v0, v6, Lcom/bzbs/bean/DashboardRow;->dashboardItemA:Lcom/bzbs/bean/DashboardItem;

    invoke-direct {p0, p1, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->f(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V

    goto/16 :goto_16

    .line 1065
    :cond_167
    invoke-virtual {v6}, Lcom/bzbs/bean/DashboardRow;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "campaign_rotate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 1066
    iget-object v0, v6, Lcom/bzbs/bean/DashboardRow;->dashboardItemA:Lcom/bzbs/bean/DashboardItem;

    invoke-direct {p0, p1, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->g(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V

    goto/16 :goto_16

    .line 1068
    :cond_17f
    invoke-virtual {v6}, Lcom/bzbs/bean/DashboardRow;->getLayout()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "premium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_193

    .line 1069
    iget-object v0, v6, Lcom/bzbs/bean/DashboardRow;->dashboardItemA:Lcom/bzbs/bean/DashboardItem;

    invoke-direct {p0, p1, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->h(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V

    goto/16 :goto_16

    .line 1071
    :cond_193
    iget-object v0, v6, Lcom/bzbs/bean/DashboardRow;->dashboardItemA:Lcom/bzbs/bean/DashboardItem;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V

    goto/16 :goto_16
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 909
    .line 910
    packed-switch p2, :pswitch_data_14a

    .line 958
    :pswitch_4
    const/4 v0, 0x0

    :goto_5
    return-object v0

    .line 912
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400e5

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 913
    new-instance v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_cat_header;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_cat_header;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/view/View;)V

    goto :goto_5

    .line 915
    :pswitch_1b
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400f2

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 916
    new-instance v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_webview;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_webview;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/view/View;)V

    goto :goto_5

    .line 918
    :pswitch_30
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400f1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 919
    new-instance v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_webview;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_webview;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/view/View;)V

    goto :goto_5

    .line 921
    :pswitch_45
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400f0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 922
    new-instance v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_webview;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_webview;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/view/View;)V

    goto :goto_5

    .line 924
    :pswitch_5a
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400ed

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 925
    new-instance v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    invoke-direct {v0, v1}, Lcom/samsung/privilege/holder/DashboardHolder_wallet;-><init>(Landroid/view/View;)V

    goto :goto_5

    .line 927
    :pswitch_6f
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400ee

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 928
    new-instance v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet_card;

    invoke-direct {v0, v1}, Lcom/samsung/privilege/holder/DashboardHolder_wallet_card;-><init>(Landroid/view/View;)V

    goto :goto_5

    .line 930
    :pswitch_84
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400ef

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 931
    new-instance v0, Lcom/samsung/privilege/holder/DashboardHolder_wallet_history;

    invoke-direct {v0, v1}, Lcom/samsung/privilege/holder/DashboardHolder_wallet_history;-><init>(Landroid/view/View;)V

    goto/16 :goto_5

    .line 933
    :pswitch_9a
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400ec

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 934
    new-instance v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small_autoredeem;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/view/View;)V

    goto/16 :goto_5

    .line 936
    :pswitch_b0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400eb

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 937
    new-instance v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_small;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/view/View;)V

    goto/16 :goto_5

    .line 939
    :pswitch_c6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400e7

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 940
    new-instance v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium_autoredeem;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium_autoredeem;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/view/View;)V

    goto/16 :goto_5

    .line 942
    :pswitch_dc
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400e6

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 943
    new-instance v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/view/View;)V

    goto/16 :goto_5

    .line 945
    :pswitch_f2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400e3

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 946
    new-instance v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_autoredeem;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_autoredeem;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/view/View;)V

    goto/16 :goto_5

    .line 948
    :pswitch_108
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400e2

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 949
    new-instance v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/view/View;)V

    goto/16 :goto_5

    .line 951
    :pswitch_11e
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400e8

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 952
    new-instance v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium_pager;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium_pager;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/view/View;)V

    goto/16 :goto_5

    .line 954
    :pswitch_134
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400e4

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 955
    new-instance v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/view/View;)V

    goto/16 :goto_5

    .line 910
    :pswitch_data_14a
    .packed-switch 0x7f0400e2
        :pswitch_108
        :pswitch_f2
        :pswitch_134
        :pswitch_6
        :pswitch_dc
        :pswitch_c6
        :pswitch_11e
        :pswitch_4
        :pswitch_4
        :pswitch_b0
        :pswitch_9a
        :pswitch_5a
        :pswitch_6f
        :pswitch_84
        :pswitch_45
        :pswitch_30
        :pswitch_1b
    .end packed-switch
.end method
