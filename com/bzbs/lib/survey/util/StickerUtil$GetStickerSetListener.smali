.class Lcom/bzbs/lib/survey/util/StickerUtil$GetStickerSetListener;
.super Lcom/bzbs/lib/survey/util/http/HttpRQListener;
.source "StickerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/util/StickerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetStickerSetListener"
.end annotation


# instance fields
.field private gAppContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/bzbs/lib/survey/util/http/HttpRQListener;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/StickerUtil$GetStickerSetListener;->gAppContext:Landroid/content/Context;

    .line 127
    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 131
    const-string/jumbo v1, "buzzebees.sticker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(GetStickerSetListener|onComplete)response={"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    # getter for: Lcom/bzbs/lib/survey/util/StickerUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/bzbs/lib/survey/util/StickerUtil;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(GetStickerSetListener|onComplete)response={"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_63

    .line 136
    :try_start_4f
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/StickerUtil$GetStickerSetListener;->gAppContext:Landroid/content/Context;

    invoke-static {p2, v1}, Lcom/bzbs/lib/survey/util/StickerUtil;->InitStickerSets(Ljava/lang/String;Landroid/content/Context;)V

    .line 138
    # getter for: Lcom/bzbs/lib/survey/util/StickerUtil;->gStickerSets:Ljava/util/ArrayList;
    invoke-static {}, Lcom/bzbs/lib/survey/util/StickerUtil;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_63

    .line 139
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/StickerUtil$GetStickerSetListener;->gAppContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/bzbs/lib/survey/util/StickerUtil;->SetStickerSets(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_63} :catch_64

    .line 147
    :cond_63
    :goto_63
    return-void

    .line 141
    :catch_64
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "buzzebees.sticker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(GetStickerSetListener|onComplete|Exception):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63
.end method
