.class public Lcom/samsung/privilege/Const;
.super Ljava/lang/Object;
.source "Const.java"


# static fields
.field public static final SCREEN_SIZE_LARGE:I = 0x3

.field public static final SCREEN_SIZE_MEDIUM:I = 0x2

.field public static final SCREEN_SIZE_SMALL:I = 0x1

.field public static final SCREEN_SIZE_XLARGE:I = 0x4

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/privilege/Const;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
