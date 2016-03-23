.class Lcom/bzbs/lib/survey/util/RxPermissionUtils$5$1;
.super Ljava/lang/Object;
.source "RxPermissionUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/RxPermissionUtils$5;->call(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/util/RxPermissionUtils$5;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/RxPermissionUtils$5;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/util/RxPermissionUtils$5;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/RxPermissionUtils$5$1;->this$0:Lcom/bzbs/lib/survey/util/RxPermissionUtils$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 161
    return-void
.end method
