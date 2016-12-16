.class public Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "DashboardGiftRecyclerFragment.java"


# instance fields
.field final synthetic a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

.field private b:Landroid/app/Activity;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/DashboardItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/DashboardItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2161
    iput-object p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 2162
    iput-object p2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;->b:Landroid/app/Activity;

    .line 2163
    iput-object p3, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;->c:Ljava/util/ArrayList;

    .line 2164
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 12

    .prologue
    const v3, 0x7f0400e9

    const/4 v8, 0x0

    .line 2169
    .line 2170
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bzbs/bean/DashboardItem;

    .line 2171
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;->b:Landroid/app/Activity;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2173
    iget-object v1, v4, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v2, "hashtag"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2174
    invoke-virtual {v0, v3, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2175
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0, v8}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 2253
    :goto_2b
    return-object v0

    .line 2177
    :cond_2c
    iget-object v1, v4, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v2, "cat_header"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 2178
    invoke-virtual {v0, v3, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2179
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0, v8}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    goto :goto_2b

    .line 2181
    :cond_41
    iget-object v1, v4, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v2, "webview"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 2182
    iget-object v1, v4, Lcom/bzbs/bean/DashboardItem;->size:Ljava/lang/String;

    const-string/jumbo v2, "medium"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 2183
    const v1, 0x7f0400f2

    invoke-virtual {v0, v1, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2184
    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    new-instance v2, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_webview;

    iget-object v3, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    invoke-direct {v2, v3, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_webview;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/view/View;)V

    invoke-static {v1, v2, v4}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V

    .line 2185
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0, v8}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    goto :goto_2b

    .line 2187
    :cond_70
    iget-object v1, v4, Lcom/bzbs/bean/DashboardItem;->size:Ljava/lang/String;

    const-string/jumbo v2, "big"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 2188
    const v1, 0x7f0400f1

    invoke-virtual {v0, v1, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2189
    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    new-instance v2, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_webview;

    iget-object v3, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    invoke-direct {v2, v3, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_webview;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/view/View;)V

    invoke-static {v1, v2, v4}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V

    .line 2190
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0, v8}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    goto :goto_2b

    .line 2193
    :cond_94
    const v1, 0x7f0400f0

    invoke-virtual {v0, v1, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2194
    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    new-instance v2, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_webview;

    iget-object v3, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    invoke-direct {v2, v3, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_webview;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/view/View;)V

    invoke-static {v1, v2, v4}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V

    .line 2195
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0, v8}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    goto/16 :goto_2b

    .line 2198
    :cond_ae
    iget-object v1, v4, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v2, "wallet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 2199
    const v1, 0x7f0400ed

    invoke-virtual {v0, v1, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 2200
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    iget-object v2, v2, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-static {v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/holder/DashboardHolder_wallet;

    invoke-direct {v3, v6}, Lcom/samsung/privilege/holder/DashboardHolder_wallet;-><init>(Landroid/view/View;)V

    iget-object v5, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    iget-object v5, v5, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    const-string/jumbo v7, "header_en"

    invoke-static {v5, v7}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/holder/DashboardHolder_wallet;->a(Landroid/app/Activity;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Landroid/os/Handler;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V

    .line 2201
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v6, v8}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    move-object v0, v6

    .line 2202
    goto/16 :goto_2b

    .line 2203
    :cond_ef
    iget-object v1, v4, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v2, "wallet_card"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_130

    .line 2204
    const v1, 0x7f0400ee

    invoke-virtual {v0, v1, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 2205
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    iget-object v2, v2, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-static {v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/holder/DashboardHolder_wallet_card;

    invoke-direct {v3, v6}, Lcom/samsung/privilege/holder/DashboardHolder_wallet_card;-><init>(Landroid/view/View;)V

    iget-object v5, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    iget-object v5, v5, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    const-string/jumbo v7, "header_en"

    invoke-static {v5, v7}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/holder/DashboardHolder_wallet_card;->a(Landroid/app/Activity;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Landroid/os/Handler;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V

    .line 2206
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v6, v8}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    move-object v0, v6

    .line 2207
    goto/16 :goto_2b

    .line 2209
    :cond_130
    iget-object v1, v4, Lcom/bzbs/bean/DashboardItem;->size:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "small"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_160

    .line 2210
    iget-object v1, v4, Lcom/bzbs/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    const-string/jumbo v2, "premium"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_155

    .line 2211
    invoke-virtual {v0, v3, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2212
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0, v8}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    goto/16 :goto_2b

    .line 2215
    :cond_155
    invoke-virtual {v0, v3, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2216
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0, v8}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    goto/16 :goto_2b

    .line 2219
    :cond_160
    iget-object v1, v4, Lcom/bzbs/bean/DashboardItem;->size:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "medium"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c8

    .line 2220
    iget-object v1, v4, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "campaign_rotate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_189

    .line 2221
    invoke-virtual {v0, v3, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2222
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0, v8}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    goto/16 :goto_2b

    .line 2225
    :cond_189
    iget-object v1, v4, Lcom/bzbs/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    const-string/jumbo v2, "premium"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ae

    .line 2226
    const v1, 0x7f0400e7

    invoke-virtual {v0, v1, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2227
    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    new-instance v2, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium_autoredeem;

    iget-object v3, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    invoke-direct {v2, v3, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium_autoredeem;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/view/View;)V

    invoke-static {v1, v2, v4}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->b(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V

    .line 2228
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0, v8}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    goto/16 :goto_2b

    .line 2231
    :cond_1ae
    const v1, 0x7f0400e6

    invoke-virtual {v0, v1, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2232
    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    new-instance v2, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium;

    iget-object v3, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    invoke-direct {v2, v3, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_medium;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/view/View;)V

    invoke-static {v1, v2, v4}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->c(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V

    .line 2233
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0, v8}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    goto/16 :goto_2b

    .line 2238
    :cond_1c8
    iget-object v1, v4, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "campaign_rotate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e2

    .line 2239
    invoke-virtual {v0, v3, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2240
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0, v8}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    goto/16 :goto_2b

    .line 2243
    :cond_1e2
    iget-object v1, v4, Lcom/bzbs/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    const-string/jumbo v2, "premium"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_207

    .line 2244
    const v1, 0x7f0400e3

    invoke-virtual {v0, v1, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2245
    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    new-instance v2, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_autoredeem;

    iget-object v3, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    invoke-direct {v2, v3, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_autoredeem;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/view/View;)V

    invoke-static {v1, v2, v4}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->d(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V

    .line 2246
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0, v8}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    goto/16 :goto_2b

    .line 2249
    :cond_207
    const v1, 0x7f0400e2

    invoke-virtual {v0, v1, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2251
    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    new-instance v2, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;

    iget-object v3, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    invoke-direct {v2, v3, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Landroid/view/View;)V

    invoke-virtual {v1, v2, v4}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V

    .line 2252
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0, v8}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    goto/16 :goto_2b
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .prologue
    .line 2262
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2263
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 2273
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public b()I
    .registers 2

    .prologue
    .line 2268
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public d()V
    .registers 1

    .prologue
    .line 2278
    return-void
.end method
