.class Lcom/samsung/privilege/util/StickerUtil$GetStickerSetListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "StickerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/util/StickerUtil;
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
    .line 225
    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    .line 226
    iput-object p1, p0, Lcom/samsung/privilege/util/StickerUtil$GetStickerSetListener;->gAppContext:Landroid/content/Context;

    .line 227
    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 231
    const-string v1, "buzzebees.sticker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(GetStickerSetListener|onComplete)response={"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_36

    .line 235
    :try_start_22
    iget-object v1, p0, Lcom/samsung/privilege/util/StickerUtil$GetStickerSetListener;->gAppContext:Landroid/content/Context;

    # invokes: Lcom/samsung/privilege/util/StickerUtil;->InitStickerSets(Ljava/lang/String;Landroid/content/Context;)V
    invoke-static {p2, v1}, Lcom/samsung/privilege/util/StickerUtil;->access$0(Ljava/lang/String;Landroid/content/Context;)V

    .line 237
    # getter for: Lcom/samsung/privilege/util/StickerUtil;->gStickerSets:Ljava/util/ArrayList;
    invoke-static {}, Lcom/samsung/privilege/util/StickerUtil;->access$1()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_36

    .line 238
    iget-object v1, p0, Lcom/samsung/privilege/util/StickerUtil$GetStickerSetListener;->gAppContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/samsung/privilege/util/StickerUtil;->SetStickerSets(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_36} :catch_37

    .line 246
    :cond_36
    :goto_36
    return-void

    .line 240
    :catch_37
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "buzzebees.sticker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(GetStickerSetListener|onComplete|Exception):"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36
.end method
