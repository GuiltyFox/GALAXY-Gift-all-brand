.class Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$3;
.super Ljava/lang/Object;
.source "MarketPlaceListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a(ILcom/bzbs/marketplace/listener/OnTabCartItemListener;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/listener/OnTabCartItemListener;

.field final synthetic b:I

.field final synthetic c:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;Lcom/bzbs/marketplace/listener/OnTabCartItemListener;I)V
    .registers 4

    .prologue
    .line 329
    iput-object p1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$3;->c:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;

    iput-object p2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$3;->a:Lcom/bzbs/marketplace/listener/OnTabCartItemListener;

    iput p3, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 332
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$3;->a:Lcom/bzbs/marketplace/listener/OnTabCartItemListener;

    if-nez v0, :cond_7

    .line 343
    :goto_6
    return-void

    .line 335
    :cond_7
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$3;->c:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;

    invoke-static {v0}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;->c(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v3, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$3;->b:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    .line 337
    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 338
    :cond_31
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$3;->a:Lcom/bzbs/marketplace/listener/OnTabCartItemListener;

    iget v2, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$3;->b:I

    invoke-interface {v0, p1, v2, v1}, Lcom/bzbs/marketplace/listener/OnTabCartItemListener;->a(Landroid/view/View;II)V

    goto :goto_6

    .line 340
    :cond_39
    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$3;->c:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewCart:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6f

    iget-object v0, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$3;->c:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;

    iget-object v0, v0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->textViewCart:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$3;->c:Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;

    invoke-static {v3}, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;->a(Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    move v0, v1

    .line 341
    :goto_64
    iget-object v1, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$3;->a:Lcom/bzbs/marketplace/listener/OnTabCartItemListener;

    iget v3, p0, Lcom/bzbs/marketplace/adapter/MarketPlaceListAdapter$ViewHolderList$3;->b:I

    if-eqz v0, :cond_6b

    const/4 v2, 0x2

    :cond_6b
    invoke-interface {v1, p1, v3, v2}, Lcom/bzbs/marketplace/listener/OnTabCartItemListener;->a(Landroid/view/View;II)V

    goto :goto_6

    :cond_6f
    move v0, v2

    .line 340
    goto :goto_64
.end method
