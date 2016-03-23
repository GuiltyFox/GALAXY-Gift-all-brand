.class Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadStatus;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/control/imagecropper/BitmapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadStatus"
.end annotation


# instance fields
.field public mOptions:Landroid/graphics/BitmapFactory$Options;

.field public mState:Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;->ALLOW:Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;

    iput-object v0, p0, Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadStatus;->mState:Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/control/imagecropper/BitmapManager$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/samsung/privilege/control/imagecropper/BitmapManager$1;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadStatus;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 57
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadStatus;->mState:Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;

    sget-object v2, Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;->CANCEL:Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;

    if-ne v1, v2, :cond_2b

    .line 58
    const-string/jumbo v0, "Cancel"

    .line 64
    .local v0, "s":Ljava/lang/String;
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thread state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", options = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    return-object v0

    .line 59
    .end local v0    # "s":Ljava/lang/String;
    :cond_2b
    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadStatus;->mState:Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;

    sget-object v2, Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;->ALLOW:Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;

    if-ne v1, v2, :cond_35

    .line 60
    const-string/jumbo v0, "Allow"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_9

    .line 62
    .end local v0    # "s":Ljava/lang/String;
    :cond_35
    const-string/jumbo v0, "?"

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_9
.end method
