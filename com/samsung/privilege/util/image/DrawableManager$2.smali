.class Lcom/samsung/privilege/util/image/DrawableManager$2;
.super Ljava/lang/Thread;
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

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$urlString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/image/DrawableManager;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/image/DrawableManager$2;->this$0:Lcom/samsung/privilege/util/image/DrawableManager;

    iput-object p2, p0, Lcom/samsung/privilege/util/image/DrawableManager$2;->val$urlString:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/privilege/util/image/DrawableManager$2;->val$handler:Landroid/os/Handler;

    .line 125
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 129
    iget-object v2, p0, Lcom/samsung/privilege/util/image/DrawableManager$2;->this$0:Lcom/samsung/privilege/util/image/DrawableManager;

    iget-object v3, p0, Lcom/samsung/privilege/util/image/DrawableManager$2;->val$urlString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/util/image/DrawableManager;->fetchDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 130
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/samsung/privilege/util/image/DrawableManager$2;->val$handler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 131
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/privilege/util/image/DrawableManager$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 132
    return-void
.end method
