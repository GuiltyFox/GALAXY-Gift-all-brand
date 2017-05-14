.class Landroid/support/v7/widget/TintInfo;
.super Ljava/lang/Object;
.source "TintInfo.java"


# instance fields
.field public b:Landroid/content/res/ColorStateList;

.field public c:Landroid/graphics/PorterDuff$Mode;

.field public d:Z

.field public e:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 29
    iput-object v1, p0, Landroid/support/v7/widget/TintInfo;->b:Landroid/content/res/ColorStateList;

    .line 30
    iput-boolean v0, p0, Landroid/support/v7/widget/TintInfo;->e:Z

    .line 31
    iput-object v1, p0, Landroid/support/v7/widget/TintInfo;->c:Landroid/graphics/PorterDuff$Mode;

    .line 32
    iput-boolean v0, p0, Landroid/support/v7/widget/TintInfo;->d:Z

    .line 33
    return-void
.end method
