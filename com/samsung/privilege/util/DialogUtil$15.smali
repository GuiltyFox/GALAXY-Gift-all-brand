.class Lcom/samsung/privilege/util/DialogUtil$15;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogUtil;->loadImageAnimate(Landroid/app/Activity;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$animDraw:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimationDrawable;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogUtil$15;->val$animDraw:Landroid/graphics/drawable/AnimationDrawable;

    .line 949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 952
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogUtil$15;->val$animDraw:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 953
    return-void
.end method
