.class Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadStatus;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# instance fields
.field public a:Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;

.field public b:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;->b:Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;

    iput-object v0, p0, Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadStatus;->a:Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/control/imagecropper/BitmapManager$1;)V
    .registers 2

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
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadStatus;->a:Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;

    sget-object v1, Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;->a:Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;

    if-ne v0, v1, :cond_2b

    .line 58
    const-string/jumbo v0, "Cancel"

    .line 64
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thread state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", options = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadStatus;->b:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    return-object v0

    .line 59
    :cond_2b
    iget-object v0, p0, Lcom/samsung/privilege/control/imagecropper/BitmapManager$ThreadStatus;->a:Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;

    sget-object v1, Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;->b:Lcom/samsung/privilege/control/imagecropper/BitmapManager$State;

    if-ne v0, v1, :cond_35

    .line 60
    const-string/jumbo v0, "Allow"

    goto :goto_9

    .line 62
    :cond_35
    const-string/jumbo v0, "?"

    goto :goto_9
.end method
