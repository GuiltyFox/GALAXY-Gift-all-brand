.class Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter$ViewHolderInAppRow;
.super Ljava/lang/Object;
.source "InAppsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderInAppRow"
.end annotation


# instance fields
.field public imageInApp:Lcom/loopj/android/image/SmartImageView;

.field final synthetic this$1:Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter;

.field public tvInApp:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter;)V
    .registers 2

    .prologue
    .line 349
    iput-object p1, p0, Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter$ViewHolderInAppRow;->this$1:Lcom/samsung/privilege/activity/InAppsFragment$InAppsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
