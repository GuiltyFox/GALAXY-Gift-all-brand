.class Lcom/loopj/android/image/SmartImageView$1;
.super Lcom/loopj/android/image/SmartImageTask$OnCompleteHandler;
.source "SmartImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/image/SmartImageView;->setImage(Lcom/loopj/android/image/SmartImage;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopj/android/image/SmartImageView;

.field private final synthetic val$fallbackResource:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/loopj/android/image/SmartImageView;Ljava/lang/Integer;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/loopj/android/image/SmartImageView$1;->this$0:Lcom/loopj/android/image/SmartImageView;

    iput-object p2, p0, Lcom/loopj/android/image/SmartImageView$1;->val$fallbackResource:Ljava/lang/Integer;

    .line 119
    invoke-direct {p0}, Lcom/loopj/android/image/SmartImageTask$OnCompleteHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/graphics/Bitmap;)V
    .registers 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 126
    .local v0, "bitmapRound":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_114

    .line 127
    :try_start_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-nez v2, :cond_7f

    .line 129
    :cond_f
    iget-object v2, p0, Lcom/loopj/android/image/SmartImageView$1;->val$fallbackResource:Ljava/lang/Integer;

    if-eqz v2, :cond_3c

    .line 130
    iget-object v2, p0, Lcom/loopj/android/image/SmartImageView$1;->this$0:Lcom/loopj/android/image/SmartImageView;

    iget-object v3, p0, Lcom/loopj/android/image/SmartImageView$1;->val$fallbackResource:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/loopj/android/image/SmartImageView;->setImageResource(I)V

    .line 131
    iget-object v2, p0, Lcom/loopj/android/image/SmartImageView$1;->this$0:Lcom/loopj/android/image/SmartImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/loopj/android/image/SmartImageView;->setAlpha(I)V
    :try_end_24
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_24} :catch_4e
    .catchall {:try_start_3 .. :try_end_24} :catchall_b7

    .line 192
    :goto_24
    if-eqz p1, :cond_2f

    .line 193
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 194
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 198
    :cond_2f
    if-eqz v0, :cond_3b

    .line 199
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 200
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 202
    :cond_3a
    const/4 v0, 0x0

    .line 206
    :cond_3b
    :goto_3b
    return-void

    .line 138
    :cond_3c
    :try_start_3c
    iget-object v2, p0, Lcom/loopj/android/image/SmartImageView$1;->this$0:Lcom/loopj/android/image/SmartImageView;

    iget-object v3, p0, Lcom/loopj/android/image/SmartImageView$1;->this$0:Lcom/loopj/android/image/SmartImageView;

    # getter for: Lcom/loopj/android/image/SmartImageView;->gResource_no_image_available:I
    invoke-static {v3}, Lcom/loopj/android/image/SmartImageView;->access$0(Lcom/loopj/android/image/SmartImageView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/loopj/android/image/SmartImageView;->setImageResource(I)V

    .line 139
    iget-object v2, p0, Lcom/loopj/android/image/SmartImageView$1;->this$0:Lcom/loopj/android/image/SmartImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/loopj/android/image/SmartImageView;->setAlpha(I)V
    :try_end_4d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3c .. :try_end_4d} :catch_4e
    .catchall {:try_start_3c .. :try_end_4d} :catchall_b7

    goto :goto_24

    .line 188
    :catch_4e
    move-exception v1

    .line 190
    .local v1, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_4f
    const-string v2, "MyLog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SmartImageView|setOnCompleteHandler|Error in OutOfMemoryError|"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_4f .. :try_end_67} :catchall_b7

    .line 192
    if-eqz p1, :cond_72

    .line 193
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_72

    .line 194
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 198
    :cond_72
    if-eqz v0, :cond_3b

    .line 199
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 200
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 202
    :cond_7d
    const/4 v0, 0x0

    goto :goto_3b

    .line 142
    .end local v1    # "oom":Ljava/lang/OutOfMemoryError;
    :cond_7f
    :try_start_7f
    sget-boolean v2, Lcom/samsung/privilege/AppSetting;->MODE_IMAGE_ROUNDED:Z

    if-eqz v2, :cond_f2

    .line 143
    iget-object v2, p0, Lcom/loopj/android/image/SmartImageView$1;->this$0:Lcom/loopj/android/image/SmartImageView;

    # getter for: Lcom/loopj/android/image/SmartImageView;->gIsRounded:Z
    invoke-static {v2}, Lcom/loopj/android/image/SmartImageView;->access$1(Lcom/loopj/android/image/SmartImageView;)Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 144
    iget-object v2, p0, Lcom/loopj/android/image/SmartImageView$1;->this$0:Lcom/loopj/android/image/SmartImageView;

    # getter for: Lcom/loopj/android/image/SmartImageView;->gCornerRadius:I
    invoke-static {v2}, Lcom/loopj/android/image/SmartImageView;->access$2(Lcom/loopj/android/image/SmartImageView;)I

    move-result v2

    invoke-static {p1, v2}, Lcom/samsung/privilege/util/image/ImageUtilities;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 145
    iget-object v2, p0, Lcom/loopj/android/image/SmartImageView$1;->this$0:Lcom/loopj/android/image/SmartImageView;

    invoke-virtual {v2, v0}, Lcom/loopj/android/image/SmartImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 146
    iget-object v2, p0, Lcom/loopj/android/image/SmartImageView$1;->this$0:Lcom/loopj/android/image/SmartImageView;

    iget-object v2, v2, Lcom/loopj/android/image/SmartImageView;->ProgressBarLoading:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_ae

    .line 147
    iget-object v2, p0, Lcom/loopj/android/image/SmartImageView$1;->this$0:Lcom/loopj/android/image/SmartImageView;

    iget-object v2, v2, Lcom/loopj/android/image/SmartImageView;->ProgressBarLoading:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 148
    iget-object v2, p0, Lcom/loopj/android/image/SmartImageView$1;->this$0:Lcom/loopj/android/image/SmartImageView;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/loopj/android/image/SmartImageView;->ProgressBarLoading:Landroid/widget/ProgressBar;

    .line 150
    :cond_ae
    iget-object v2, p0, Lcom/loopj/android/image/SmartImageView$1;->this$0:Lcom/loopj/android/image/SmartImageView;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Lcom/loopj/android/image/SmartImageView;->setAlpha(I)V
    :try_end_b5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7f .. :try_end_b5} :catch_4e
    .catchall {:try_start_7f .. :try_end_b5} :catchall_b7

    goto/16 :goto_24

    .line 191
    :catchall_b7
    move-exception v2

    .line 192
    if-eqz p1, :cond_c3

    .line 193
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_c3

    .line 194
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 198
    :cond_c3
    if-eqz v0, :cond_cf

    .line 199
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_ce

    .line 200
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 202
    :cond_ce
    const/4 v0, 0x0

    .line 204
    :cond_cf
    throw v2

    .line 152
    :cond_d0
    :try_start_d0
    iget-object v2, p0, Lcom/loopj/android/image/SmartImageView$1;->this$0:Lcom/loopj/android/image/SmartImageView;

    invoke-virtual {v2, p1}, Lcom/loopj/android/image/SmartImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 153
    iget-object v2, p0, Lcom/loopj/android/image/SmartImageView$1;->this$0:Lcom/loopj/android/image/SmartImageView;

    iget-object v2, v2, Lcom/loopj/android/image/SmartImageView;->ProgressBarLoading:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_e9

    .line 154
    iget-object v2, p0, Lcom/loopj/android/image/SmartImageView$1;->this$0:Lcom/loopj/android/image/SmartImageView;

    iget-object v2, v2, Lcom/loopj/android/image/SmartImageView;->ProgressBarLoading:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 155
    iget-object v2, p0, Lcom/loopj/android/image/SmartImageView$1;->this$0:Lcom/loopj/android/image/SmartImageView;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/loopj/android/image/SmartImageView;->ProgressBarLoading:Landroid/widget/ProgressBar;

    .line 157
    :cond_e9
    iget-object v2, p0, Lcom/loopj/android/image/SmartImageView$1;->this$0:Lcom/loopj/android/image/SmartImageView;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Lcom/loopj/android/image/SmartImageView;->setAlpha(I)V

    goto/16 :goto_24

    .line 160
    :cond_f2
    iget-object v2, p0, Lcom/loopj/android/image/SmartImageView$1;->this$0:Lcom/loopj/android/image/SmartImageView;

    invoke-virtual {v2, p1}, Lcom/loopj/android/image/SmartImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 161
    iget-object v2, p0, Lcom/loopj/android/image/SmartImageView$1;->this$0:Lcom/loopj/android/image/SmartImageView;

    iget-object v2, v2, Lcom/loopj/android/image/SmartImageView;->ProgressBarLoading:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_10b

    .line 162
    iget-object v2, p0, Lcom/loopj/android/image/SmartImageView$1;->this$0:Lcom/loopj/android/image/SmartImageView;

    iget-object v2, v2, Lcom/loopj/android/image/SmartImageView;->ProgressBarLoading:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 163
    iget-object v2, p0, Lcom/loopj/android/image/SmartImageView$1;->this$0:Lcom/loopj/android/image/SmartImageView;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/loopj/android/image/SmartImageView;->ProgressBarLoading:Landroid/widget/ProgressBar;

    .line 165
    :cond_10b
    iget-object v2, p0, Lcom/loopj/android/image/SmartImageView$1;->this$0:Lcom/loopj/android/image/SmartImageView;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Lcom/loopj/android/image/SmartImageView;->setAlpha(I)V

    goto/16 :goto_24

    .line 170
    :cond_114
    iget-object v2, p0, Lcom/loopj/android/image/SmartImageView$1;->val$fallbackResource:Ljava/lang/Integer;

    if-eqz v2, :cond_12b

    .line 171
    iget-object v2, p0, Lcom/loopj/android/image/SmartImageView$1;->this$0:Lcom/loopj/android/image/SmartImageView;

    iget-object v3, p0, Lcom/loopj/android/image/SmartImageView$1;->val$fallbackResource:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/loopj/android/image/SmartImageView;->setImageResource(I)V

    .line 172
    iget-object v2, p0, Lcom/loopj/android/image/SmartImageView$1;->this$0:Lcom/loopj/android/image/SmartImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/loopj/android/image/SmartImageView;->setAlpha(I)V

    goto/16 :goto_24

    .line 179
    :cond_12b
    iget-object v2, p0, Lcom/loopj/android/image/SmartImageView$1;->this$0:Lcom/loopj/android/image/SmartImageView;

    iget-object v3, p0, Lcom/loopj/android/image/SmartImageView$1;->this$0:Lcom/loopj/android/image/SmartImageView;

    # getter for: Lcom/loopj/android/image/SmartImageView;->gResource_no_image_available:I
    invoke-static {v3}, Lcom/loopj/android/image/SmartImageView;->access$0(Lcom/loopj/android/image/SmartImageView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/loopj/android/image/SmartImageView;->setImageResource(I)V

    .line 180
    iget-object v2, p0, Lcom/loopj/android/image/SmartImageView$1;->this$0:Lcom/loopj/android/image/SmartImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/loopj/android/image/SmartImageView;->setAlpha(I)V
    :try_end_13c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d0 .. :try_end_13c} :catch_4e
    .catchall {:try_start_d0 .. :try_end_13c} :catchall_b7

    goto/16 :goto_24
.end method
