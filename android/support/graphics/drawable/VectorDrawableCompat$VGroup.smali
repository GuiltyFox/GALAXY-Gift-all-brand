.class Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/graphics/Matrix;

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private final j:Landroid/graphics/Matrix;

.field private k:I

.field private l:[I

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1122
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->b:Landroid/graphics/Matrix;

    .line 1126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->a:Ljava/util/ArrayList;

    .line 1128
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->c:F

    .line 1129
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->d:F

    .line 1130
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->e:F

    .line 1131
    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->f:F

    .line 1132
    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->g:F

    .line 1133
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->h:F

    .line 1134
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->i:F

    .line 1138
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->j:Landroid/graphics/Matrix;

    .line 1141
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->m:Ljava/lang/String;

    .line 1184
    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/support/v4/util/ArrayMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1122
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->b:Landroid/graphics/Matrix;

    .line 1126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->a:Ljava/util/ArrayList;

    .line 1128
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->c:F

    .line 1129
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->d:F

    .line 1130
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->e:F

    .line 1131
    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->f:F

    .line 1132
    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->g:F

    .line 1133
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->h:F

    .line 1134
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->i:F

    .line 1138
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->j:Landroid/graphics/Matrix;

    .line 1141
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->m:Ljava/lang/String;

    .line 1144
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->c:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->c:F

    .line 1145
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->d:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->d:F

    .line 1146
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->e:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->e:F

    .line 1147
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->f:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->f:F

    .line 1148
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->g:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->g:F

    .line 1149
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->h:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->h:F

    .line 1150
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->i:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->i:F

    .line 1151
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->l:[I

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->l:[I

    .line 1152
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->m:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->m:Ljava/lang/String;

    .line 1153
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->k:I

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->k:I

    .line 1154
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->m:Ljava/lang/String;

    if-eqz v0, :cond_5d

    .line 1155
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->m:Ljava/lang/String;

    invoke-virtual {p2, v0, p0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    :cond_5d
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->j:Landroid/graphics/Matrix;

    iget-object v1, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1160
    iget-object v3, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->a:Ljava/util/ArrayList;

    .line 1161
    const/4 v0, 0x0

    move v1, v0

    :goto_68
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_b7

    .line 1162
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1163
    instance-of v2, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    if-eqz v2, :cond_86

    .line 1164
    check-cast v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    .line 1165
    iget-object v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->a:Ljava/util/ArrayList;

    new-instance v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;

    invoke-direct {v4, v0, p2}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/support/v4/util/ArrayMap;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1161
    :cond_82
    :goto_82
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_68

    .line 1168
    :cond_86
    instance-of v2, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;

    if-eqz v2, :cond_a1

    .line 1169
    new-instance v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;

    check-cast v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;

    invoke-direct {v2, v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;)V

    move-object v0, v2

    .line 1175
    :goto_92
    iget-object v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1176
    iget-object v2, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->n:Ljava/lang/String;

    if-eqz v2, :cond_82

    .line 1177
    iget-object v2, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->n:Ljava/lang/String;

    invoke-virtual {p2, v2, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_82

    .line 1170
    :cond_a1
    instance-of v2, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;

    if-eqz v2, :cond_ae

    .line 1171
    new-instance v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;

    check-cast v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;

    invoke-direct {v2, v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;)V

    move-object v0, v2

    goto :goto_92

    .line 1173
    :cond_ae
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unknown object in the tree!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1181
    :cond_b7
    return-void
.end method

.method static synthetic a(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)I
    .registers 2

    .prologue
    .line 1119
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->k:I

    return v0
.end method

.method private a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6

    .prologue
    .line 1206
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->l:[I

    .line 1209
    const-string/jumbo v0, "rotation"

    const/4 v1, 0x5

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->c:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/graphics/drawable/TypedArrayUtils;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->c:F

    .line 1212
    const/4 v0, 0x1

    iget v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->d:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->d:F

    .line 1213
    const/4 v0, 0x2

    iget v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->e:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->e:F

    .line 1216
    const-string/jumbo v0, "scaleX"

    const/4 v1, 0x3

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->f:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/graphics/drawable/TypedArrayUtils;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->f:F

    .line 1220
    const-string/jumbo v0, "scaleY"

    const/4 v1, 0x4

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->g:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/graphics/drawable/TypedArrayUtils;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->g:F

    .line 1223
    const-string/jumbo v0, "translateX"

    const/4 v1, 0x6

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->h:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/graphics/drawable/TypedArrayUtils;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->h:F

    .line 1225
    const-string/jumbo v0, "translateY"

    const/4 v1, 0x7

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->i:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/graphics/drawable/TypedArrayUtils;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->i:F

    .line 1228
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1230
    if-eqz v0, :cond_5a

    .line 1231
    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->m:Ljava/lang/String;

    .line 1234
    :cond_5a
    invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->b()V

    .line 1235
    return-void
.end method

.method static synthetic b(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;
    .registers 2

    .prologue
    .line 1119
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->b:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private b()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1240
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1241
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->j:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->d:F

    neg-float v1, v1

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->e:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1242
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->j:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->f:F

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->g:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1243
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->j:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->c:F

    invoke-virtual {v0, v1, v3, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1244
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->j:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->h:F

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->d:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->i:F

    iget v3, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->e:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1245
    return-void
.end method

.method static synthetic c(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;
    .registers 2

    .prologue
    .line 1119
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->j:Landroid/graphics/Matrix;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1187
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->m:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6

    .prologue
    .line 1195
    sget-object v0, Landroid/support/graphics/drawable/AndroidResources;->b:[I

    invoke-static {p1, p3, p2, v0}, Landroid/support/graphics/drawable/VectorDrawableCommon;->b(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1197
    invoke-direct {p0, v0, p4}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1198
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1199
    return-void
.end method
