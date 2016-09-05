.class Lcom/bzbs/marketplace/fragment/ReviewFragment$CheckListener;
.super Ljava/lang/Object;
.source "ReviewFragment.java"

# interfaces
.implements Lcom/bzbs/marketplace/util/StickerEvents$EventsListener;


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/ReviewFragment;


# direct methods
.method private constructor <init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V
    .registers 2

    .prologue
    .line 698
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$CheckListener;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;Lcom/bzbs/marketplace/fragment/ReviewFragment$1;)V
    .registers 3

    .prologue
    .line 698
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/fragment/ReviewFragment$CheckListener;-><init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;)V
    .registers 5

    .prologue
    .line 703
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$CheckListener;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->getPictureUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a(Lcom/bzbs/marketplace/fragment/ReviewFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 704
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$CheckListener;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-virtual {p1}, Lcom/bzbs/marketplace/model/sticker/StickerModel$StickersEntity;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->b(Lcom/bzbs/marketplace/fragment/ReviewFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 705
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$CheckListener;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a(Lcom/bzbs/marketplace/fragment/ReviewFragment;ZZ)V

    .line 706
    return-void
.end method
