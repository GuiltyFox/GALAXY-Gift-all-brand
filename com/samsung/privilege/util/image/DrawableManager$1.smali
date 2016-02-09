.class Lcom/samsung/privilege/util/image/DrawableManager$1;
.super Landroid/os/Handler;
.source "DrawableManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/image/DrawableManager;->fetchDrawableOnThread(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/util/image/DrawableManager;

.field private final synthetic val$imageView:Landroid/widget/ImageView;

.field private final synthetic val$pbLoading:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/image/DrawableManager;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/image/DrawableManager$1;->this$0:Lcom/samsung/privilege/util/image/DrawableManager;

    iput-object p2, p0, Lcom/samsung/privilege/util/image/DrawableManager$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/samsung/privilege/util/image/DrawableManager$1;->val$pbLoading:Landroid/widget/ProgressBar;

    .line 117
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 120
    iget-object v1, p0, Lcom/samsung/privilege/util/image/DrawableManager$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object v0, p0, Lcom/samsung/privilege/util/image/DrawableManager$1;->val$pbLoading:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 122
    return-void
.end method
