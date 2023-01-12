
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00009117          	auipc	sp,0x9
    80000004:	94013103          	ld	sp,-1728(sp) # 80008940 <_GLOBAL_OFFSET_TABLE_+0x58>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	07d050ef          	jal	ra,80005898 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:

    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    csrw sscratch, sp
    80001004:	14011073          	csrw	sscratch,sp
    sd x0, 0(sp)
    80001008:	00013023          	sd	zero,0(sp)
    sd x1, 8(sp)
    8000100c:	00113423          	sd	ra,8(sp)
    sd x2, 16(sp)
    80001010:	00213823          	sd	sp,16(sp)
    sd x3, 24(sp)
    80001014:	00313c23          	sd	gp,24(sp)
    sd x4, 32(sp)
    80001018:	02413023          	sd	tp,32(sp)
    sd x5, 40(sp)
    8000101c:	02513423          	sd	t0,40(sp)
    sd x6, 48(sp)
    80001020:	02613823          	sd	t1,48(sp)
    sd x7, 56(sp)
    80001024:	02713c23          	sd	t2,56(sp)
    sd x8, 64(sp)
    80001028:	04813023          	sd	s0,64(sp)
    sd x9, 72(sp)
    8000102c:	04913423          	sd	s1,72(sp)
    sd x10, 80(sp)
    80001030:	04a13823          	sd	a0,80(sp)
    sd x11, 88(sp)
    80001034:	04b13c23          	sd	a1,88(sp)
    sd x12, 96(sp)
    80001038:	06c13023          	sd	a2,96(sp)
    sd x13, 104(sp)
    8000103c:	06d13423          	sd	a3,104(sp)
    sd x14, 112(sp)
    80001040:	06e13823          	sd	a4,112(sp)
    sd x15, 120(sp)
    80001044:	06f13c23          	sd	a5,120(sp)
    sd x16, 128(sp)
    80001048:	09013023          	sd	a6,128(sp)
    sd x17, 136(sp)
    8000104c:	09113423          	sd	a7,136(sp)
    sd x18, 144(sp)
    80001050:	09213823          	sd	s2,144(sp)
    sd x19, 152(sp)
    80001054:	09313c23          	sd	s3,152(sp)
    sd x20, 160(sp)
    80001058:	0b413023          	sd	s4,160(sp)
    sd x21, 168(sp)
    8000105c:	0b513423          	sd	s5,168(sp)
    sd x22, 176(sp)
    80001060:	0b613823          	sd	s6,176(sp)
    sd x23, 184(sp)
    80001064:	0b713c23          	sd	s7,184(sp)
    sd x24, 192(sp)
    80001068:	0d813023          	sd	s8,192(sp)
    sd x25, 200(sp)
    8000106c:	0d913423          	sd	s9,200(sp)
    sd x26, 208(sp)
    80001070:	0da13823          	sd	s10,208(sp)
    sd x27, 216(sp)
    80001074:	0db13c23          	sd	s11,216(sp)
    sd x28, 224(sp)
    80001078:	0fc13023          	sd	t3,224(sp)
    sd x29, 232(sp)
    8000107c:	0fd13423          	sd	t4,232(sp)
    sd x30, 240(sp)
    80001080:	0fe13823          	sd	t5,240(sp)
    sd x31, 248(sp)
    80001084:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001088:	608030ef          	jal	ra,80004690 <_ZN5Riscv20handleSupervisorTrapEv>

    ld x0, 0(sp)
    8000108c:	00013003          	ld	zero,0(sp)
    ld x1, 8(sp)
    80001090:	00813083          	ld	ra,8(sp)
    ld x2, 16(sp)
    80001094:	01013103          	ld	sp,16(sp)
    ld x3, 24(sp)
    80001098:	01813183          	ld	gp,24(sp)
    ld x4, 32(sp)
    8000109c:	02013203          	ld	tp,32(sp)
    ld x5, 40(sp)
    800010a0:	02813283          	ld	t0,40(sp)
    ld x6, 48(sp)
    800010a4:	03013303          	ld	t1,48(sp)
    ld x7, 56(sp)
    800010a8:	03813383          	ld	t2,56(sp)
    ld x8, 64(sp)
    800010ac:	04013403          	ld	s0,64(sp)
    ld x9, 72(sp)
    800010b0:	04813483          	ld	s1,72(sp)
    ld x10, 80(sp)
    800010b4:	05013503          	ld	a0,80(sp)
    ld x11, 88(sp)
    800010b8:	05813583          	ld	a1,88(sp)
    ld x12, 96(sp)
    800010bc:	06013603          	ld	a2,96(sp)
    ld x13, 104(sp)
    800010c0:	06813683          	ld	a3,104(sp)
    ld x14, 112(sp)
    800010c4:	07013703          	ld	a4,112(sp)
    ld x15, 120(sp)
    800010c8:	07813783          	ld	a5,120(sp)
    ld x16, 128(sp)
    800010cc:	08013803          	ld	a6,128(sp)
    ld x17, 136(sp)
    800010d0:	08813883          	ld	a7,136(sp)
    ld x18, 144(sp)
    800010d4:	09013903          	ld	s2,144(sp)
    ld x19, 152(sp)
    800010d8:	09813983          	ld	s3,152(sp)
    ld x20, 160(sp)
    800010dc:	0a013a03          	ld	s4,160(sp)
    ld x21, 168(sp)
    800010e0:	0a813a83          	ld	s5,168(sp)
    ld x22, 176(sp)
    800010e4:	0b013b03          	ld	s6,176(sp)
    ld x23, 184(sp)
    800010e8:	0b813b83          	ld	s7,184(sp)
    ld x24, 192(sp)
    800010ec:	0c013c03          	ld	s8,192(sp)
    ld x25, 200(sp)
    800010f0:	0c813c83          	ld	s9,200(sp)
    ld x26, 208(sp)
    800010f4:	0d013d03          	ld	s10,208(sp)
    ld x27, 216(sp)
    800010f8:	0d813d83          	ld	s11,216(sp)
    ld x28, 224(sp)
    800010fc:	0e013e03          	ld	t3,224(sp)
    ld x29, 232(sp)
    80001100:	0e813e83          	ld	t4,232(sp)
    ld x30, 240(sp)
    80001104:	0f013f03          	ld	t5,240(sp)
    ld x31, 248(sp)
    80001108:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    8000110c:	10010113          	addi	sp,sp,256

    80001110:	10200073          	sret
	...

0000000080001120 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001120:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001124:	00313c23          	sd	gp,24(sp)
    80001128:	02413023          	sd	tp,32(sp)
    8000112c:	02513423          	sd	t0,40(sp)
    80001130:	02613823          	sd	t1,48(sp)
    80001134:	02713c23          	sd	t2,56(sp)
    80001138:	04813023          	sd	s0,64(sp)
    8000113c:	04913423          	sd	s1,72(sp)
    80001140:	04a13823          	sd	a0,80(sp)
    80001144:	04b13c23          	sd	a1,88(sp)
    80001148:	06c13023          	sd	a2,96(sp)
    8000114c:	06d13423          	sd	a3,104(sp)
    80001150:	06e13823          	sd	a4,112(sp)
    80001154:	06f13c23          	sd	a5,120(sp)
    80001158:	09013023          	sd	a6,128(sp)
    8000115c:	09113423          	sd	a7,136(sp)
    80001160:	09213823          	sd	s2,144(sp)
    80001164:	09313c23          	sd	s3,152(sp)
    80001168:	0b413023          	sd	s4,160(sp)
    8000116c:	0b513423          	sd	s5,168(sp)
    80001170:	0b613823          	sd	s6,176(sp)
    80001174:	0b713c23          	sd	s7,184(sp)
    80001178:	0d813023          	sd	s8,192(sp)
    8000117c:	0d913423          	sd	s9,200(sp)
    80001180:	0da13823          	sd	s10,208(sp)
    80001184:	0db13c23          	sd	s11,216(sp)
    80001188:	0fc13023          	sd	t3,224(sp)
    8000118c:	0fd13423          	sd	t4,232(sp)
    80001190:	0fe13823          	sd	t5,240(sp)
    80001194:	0ff13c23          	sd	t6,248(sp)
    ret
    80001198:	00008067          	ret

000000008000119c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000119c:	01813183          	ld	gp,24(sp)
    800011a0:	02013203          	ld	tp,32(sp)
    800011a4:	02813283          	ld	t0,40(sp)
    800011a8:	03013303          	ld	t1,48(sp)
    800011ac:	03813383          	ld	t2,56(sp)
    800011b0:	04013403          	ld	s0,64(sp)
    800011b4:	04813483          	ld	s1,72(sp)
    800011b8:	05013503          	ld	a0,80(sp)
    800011bc:	05813583          	ld	a1,88(sp)
    800011c0:	06013603          	ld	a2,96(sp)
    800011c4:	06813683          	ld	a3,104(sp)
    800011c8:	07013703          	ld	a4,112(sp)
    800011cc:	07813783          	ld	a5,120(sp)
    800011d0:	08013803          	ld	a6,128(sp)
    800011d4:	08813883          	ld	a7,136(sp)
    800011d8:	09013903          	ld	s2,144(sp)
    800011dc:	09813983          	ld	s3,152(sp)
    800011e0:	0a013a03          	ld	s4,160(sp)
    800011e4:	0a813a83          	ld	s5,168(sp)
    800011e8:	0b013b03          	ld	s6,176(sp)
    800011ec:	0b813b83          	ld	s7,184(sp)
    800011f0:	0c013c03          	ld	s8,192(sp)
    800011f4:	0c813c83          	ld	s9,200(sp)
    800011f8:	0d013d03          	ld	s10,208(sp)
    800011fc:	0d813d83          	ld	s11,216(sp)
    80001200:	0e013e03          	ld	t3,224(sp)
    80001204:	0e813e83          	ld	t4,232(sp)
    80001208:	0f013f03          	ld	t5,240(sp)
    8000120c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001210:	10010113          	addi	sp,sp,256
    ret
    80001214:	00008067          	ret

0000000080001218 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    #a0 - &old->Context
    #a1 - &running->Context
    sd sp, 0 * 8(a0)
    80001218:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 1 * 8(a0)
    8000121c:	00153423          	sd	ra,8(a0)

    ld sp, 0 * 8(a1)
    80001220:	0005b103          	ld	sp,0(a1)
    ld ra, 1 * 8(a1)
    80001224:	0085b083          	ld	ra,8(a1)

    ret
    80001228:	00008067          	ret

000000008000122c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>:

.global _ZN3PCB20contextSwitchExitingEPNS_7ContextE
.type _ZN3PCB20contextSwitchExitingEPNS_7ContextE, @function
_ZN3PCB20contextSwitchExitingEPNS_7ContextE:
    #a0 - &running->Context
    ld sp, 0 * 8(a0)
    8000122c:	00053103          	ld	sp,0(a0)
    ld ra, 1 * 8(a0)
    80001230:	00853083          	ld	ra,8(a0)

    80001234:	00008067          	ret

0000000080001238 <_Z22thread_dispatch_kernelv>:
//
#include "../../h/syscall_c_kernel.hpp"


void thread_dispatch_kernel()
{
    80001238:	ff010113          	addi	sp,sp,-16
    8000123c:	00813423          	sd	s0,8(sp)
    80001240:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001244:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80001248:	00000073          	ecall
}
    8000124c:	00813403          	ld	s0,8(sp)
    80001250:	01010113          	addi	sp,sp,16
    80001254:	00008067          	ret

0000000080001258 <_Z20sysCallGetCharOutputv>:

char sysCallGetCharOutput()
{
    80001258:	ff010113          	addi	sp,sp,-16
    8000125c:	00813423          	sd	s0,8(sp)
    80001260:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x43");
    80001264:	04300513          	li	a0,67

    __asm__ volatile("ecall");
    80001268:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000126c:	00050513          	mv	a0,a0
    return (char)result;
}
    80001270:	0ff57513          	andi	a0,a0,255
    80001274:	00813403          	ld	s0,8(sp)
    80001278:	01010113          	addi	sp,sp,16
    8000127c:	00008067          	ret

0000000080001280 <_Z18thread_exit_kernelv>:


int thread_exit_kernel()
{
    80001280:	ff010113          	addi	sp,sp,-16
    80001284:	00813423          	sd	s0,8(sp)
    80001288:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    8000128c:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    80001290:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001294:	00050513          	mv	a0,a0
    return result;
    80001298:	0005051b          	sext.w	a0,a0
    8000129c:	00813403          	ld	s0,8(sp)
    800012a0:	01010113          	addi	sp,sp,16
    800012a4:	00008067          	ret

00000000800012a8 <_Z6strcpyPKcPc>:
//singleton slab allocator
static slab_allocator_t* slabAllocator = nullptr;
static kmem_cache_t* cacheOfSlabs = nullptr;
//helping functions
void strcpy(const char* src, char* dst)
{
    800012a8:	ff010113          	addi	sp,sp,-16
    800012ac:	00813423          	sd	s0,8(sp)
    800012b0:	01010413          	addi	s0,sp,16
    while(*src != '\0')
    800012b4:	00054783          	lbu	a5,0(a0)
    800012b8:	00078a63          	beqz	a5,800012cc <_Z6strcpyPKcPc+0x24>
    {
        *dst = *src;
    800012bc:	00f58023          	sb	a5,0(a1)
        src++; dst++;
    800012c0:	00150513          	addi	a0,a0,1
    800012c4:	00158593          	addi	a1,a1,1
    while(*src != '\0')
    800012c8:	fedff06f          	j	800012b4 <_Z6strcpyPKcPc+0xc>
    }
    *dst = *src;
    800012cc:	00f58023          	sb	a5,0(a1)
}
    800012d0:	00813403          	ld	s0,8(sp)
    800012d4:	01010113          	addi	sp,sp,16
    800012d8:	00008067          	ret

00000000800012dc <_Z17destroy_slab_listPP6slab_s>:

int destroy_slab_list(slab_t** slab)
{
    800012dc:	fd010113          	addi	sp,sp,-48
    800012e0:	02113423          	sd	ra,40(sp)
    800012e4:	02813023          	sd	s0,32(sp)
    800012e8:	00913c23          	sd	s1,24(sp)
    800012ec:	01213823          	sd	s2,16(sp)
    800012f0:	01313423          	sd	s3,8(sp)
    800012f4:	01413023          	sd	s4,0(sp)
    800012f8:	03010413          	addi	s0,sp,48
    if(*slab == nullptr) return 0;
    800012fc:	00053783          	ld	a5,0(a0)
    80001300:	02078c63          	beqz	a5,80001338 <_Z17destroy_slab_listPP6slab_s+0x5c>
    80001304:	00050493          	mv	s1,a0
    size_t sz = (*slab)->owner->slab_size;
    80001308:	0107b783          	ld	a5,16(a5)
    8000130c:	0587b983          	ld	s3,88(a5)
    int totalBlocks = 0;
    80001310:	00000913          	li	s2,0
    while(*slab != nullptr)
    80001314:	0004b503          	ld	a0,0(s1)
    80001318:	02050263          	beqz	a0,8000133c <_Z17destroy_slab_listPP6slab_s+0x60>
    {
        slab_t* nextSlab = (*slab)->next;
    8000131c:	00853a03          	ld	s4,8(a0)
        buddy_free(*slab, sz);
    80001320:	00098593          	mv	a1,s3
    80001324:	00002097          	auipc	ra,0x2
    80001328:	f58080e7          	jalr	-168(ra) # 8000327c <_Z10buddy_freePvm>
        *slab = nextSlab;
    8000132c:	0144b023          	sd	s4,0(s1)
        totalBlocks+=sz;
    80001330:	0129893b          	addw	s2,s3,s2
    while(*slab != nullptr)
    80001334:	fe1ff06f          	j	80001314 <_Z17destroy_slab_listPP6slab_s+0x38>
    if(*slab == nullptr) return 0;
    80001338:	00000913          	li	s2,0
    }
    return totalBlocks;
}
    8000133c:	00090513          	mv	a0,s2
    80001340:	02813083          	ld	ra,40(sp)
    80001344:	02013403          	ld	s0,32(sp)
    80001348:	01813483          	ld	s1,24(sp)
    8000134c:	01013903          	ld	s2,16(sp)
    80001350:	00813983          	ld	s3,8(sp)
    80001354:	00013a03          	ld	s4,0(sp)
    80001358:	03010113          	addi	sp,sp,48
    8000135c:	00008067          	ret

0000000080001360 <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>:

void init_cache(kmem_cache_t* cachep, const char* cache_name, size_t slab_size, size_t obj_size, void (*ctor)(void*),void (*dtor)(void*))
{
    80001360:	fc010113          	addi	sp,sp,-64
    80001364:	02113c23          	sd	ra,56(sp)
    80001368:	02813823          	sd	s0,48(sp)
    8000136c:	02913423          	sd	s1,40(sp)
    80001370:	03213023          	sd	s2,32(sp)
    80001374:	01313c23          	sd	s3,24(sp)
    80001378:	01413823          	sd	s4,16(sp)
    8000137c:	01513423          	sd	s5,8(sp)
    80001380:	04010413          	addi	s0,sp,64
    80001384:	00050493          	mv	s1,a0
    80001388:	00058513          	mv	a0,a1
    8000138c:	00060a93          	mv	s5,a2
    80001390:	00068a13          	mv	s4,a3
    80001394:	00070993          	mv	s3,a4
    80001398:	00078913          	mv	s2,a5
    strcpy(cache_name, cachep->cacheName);
    8000139c:	00048593          	mv	a1,s1
    800013a0:	00000097          	auipc	ra,0x0
    800013a4:	f08080e7          	jalr	-248(ra) # 800012a8 <_Z6strcpyPKcPc>
    cachep->slab_size = slab_size;
    800013a8:	0554bc23          	sd	s5,88(s1)
    cachep->obj_size = obj_size;
    800013ac:	0744b023          	sd	s4,96(s1)
    cachep->ctor = ctor;
    800013b0:	0734b423          	sd	s3,104(s1)
    cachep->dtor = dtor;
    800013b4:	0724b823          	sd	s2,112(s1)

    cachep->slabs_empty = cachep->slabs_partial = cachep->slabs_full = nullptr;
    800013b8:	0404b423          	sd	zero,72(s1)
    800013bc:	0404b823          	sd	zero,80(s1)
    800013c0:	0404b023          	sd	zero,64(s1)
    cachep->errors = NO_ERROR;
    800013c4:	0604ac23          	sw	zero,120(s1)
}
    800013c8:	03813083          	ld	ra,56(sp)
    800013cc:	03013403          	ld	s0,48(sp)
    800013d0:	02813483          	ld	s1,40(sp)
    800013d4:	02013903          	ld	s2,32(sp)
    800013d8:	01813983          	ld	s3,24(sp)
    800013dc:	01013a03          	ld	s4,16(sp)
    800013e0:	00813a83          	ld	s5,8(sp)
    800013e4:	04010113          	addi	sp,sp,64
    800013e8:	00008067          	ret

00000000800013ec <_Z19slab_allocator_initP14buddyAllocator>:

slab_allocator_t* slab_allocator_init(buddyAllocator *buddy)
{
    800013ec:	fe010113          	addi	sp,sp,-32
    800013f0:	00113c23          	sd	ra,24(sp)
    800013f4:	00813823          	sd	s0,16(sp)
    800013f8:	00913423          	sd	s1,8(sp)
    800013fc:	02010413          	addi	s0,sp,32
    slab_allocator_t* slabAllocatorLocal = (slab_allocator_t*)(buddy + 1);
    80001400:	12050493          	addi	s1,a0,288

    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    80001404:	00000793          	li	a5,0
    80001408:	0140006f          	j	8000141c <_Z19slab_allocator_initP14buddyAllocator+0x30>
        slabAllocatorLocal->cachesBuffers[i] = nullptr;
    8000140c:	00379713          	slli	a4,a5,0x3
    80001410:	00e50733          	add	a4,a0,a4
    80001414:	12073023          	sd	zero,288(a4)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    80001418:	00178793          	addi	a5,a5,1
    8000141c:	00c00713          	li	a4,12
    80001420:	fef776e3          	bgeu	a4,a5,8000140c <_Z19slab_allocator_initP14buddyAllocator+0x20>

    init_cache(&slabAllocatorLocal->cacheOfCaches, "Cache of caches", CACHE_OF_CACHES_SLAB_SIZE, sizeof(kmem_cache_t), nullptr,nullptr);
    80001424:	00000793          	li	a5,0
    80001428:	00000713          	li	a4,0
    8000142c:	08000693          	li	a3,128
    80001430:	00200613          	li	a2,2
    80001434:	00007597          	auipc	a1,0x7
    80001438:	bec58593          	addi	a1,a1,-1044 # 80008020 <CONSOLE_STATUS+0x10>
    8000143c:	18850513          	addi	a0,a0,392
    80001440:	00000097          	auipc	ra,0x0
    80001444:	f20080e7          	jalr	-224(ra) # 80001360 <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>

    return slabAllocatorLocal;
}
    80001448:	00048513          	mv	a0,s1
    8000144c:	01813083          	ld	ra,24(sp)
    80001450:	01013403          	ld	s0,16(sp)
    80001454:	00813483          	ld	s1,8(sp)
    80001458:	02010113          	addi	sp,sp,32
    8000145c:	00008067          	ret

0000000080001460 <_Z13checkSetIndexP6slab_si>:

bool checkSetIndex(slab_t* slab, int index)
{
    80001460:	ff010113          	addi	sp,sp,-16
    80001464:	00813423          	sd	s0,8(sp)
    80001468:	01010413          	addi	s0,sp,16
    return (uint8)slab->allocated[index / 8] & (1 << (index%8));
    8000146c:	41f5d79b          	sraiw	a5,a1,0x1f
    80001470:	01d7d79b          	srliw	a5,a5,0x1d
    80001474:	00b785bb          	addw	a1,a5,a1
    80001478:	4035d71b          	sraiw	a4,a1,0x3
    8000147c:	00e50533          	add	a0,a0,a4
    80001480:	03054503          	lbu	a0,48(a0)
    80001484:	0075f593          	andi	a1,a1,7
    80001488:	40f585bb          	subw	a1,a1,a5
    8000148c:	40b5553b          	sraw	a0,a0,a1
}
    80001490:	00157513          	andi	a0,a0,1
    80001494:	00813403          	ld	s0,8(sp)
    80001498:	01010113          	addi	sp,sp,16
    8000149c:	00008067          	ret

00000000800014a0 <_Z17setAllocatedIndexP6slab_si>:

void setAllocatedIndex(slab_t* slab, int index)
{
    800014a0:	ff010113          	addi	sp,sp,-16
    800014a4:	00813423          	sd	s0,8(sp)
    800014a8:	01010413          	addi	s0,sp,16
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] | (1 << (index%8));
    800014ac:	41f5d79b          	sraiw	a5,a1,0x1f
    800014b0:	01d7d79b          	srliw	a5,a5,0x1d
    800014b4:	00b785bb          	addw	a1,a5,a1
    800014b8:	4035d71b          	sraiw	a4,a1,0x3
    800014bc:	00e50533          	add	a0,a0,a4
    800014c0:	03050703          	lb	a4,48(a0)
    800014c4:	0075f593          	andi	a1,a1,7
    800014c8:	40f585bb          	subw	a1,a1,a5
    800014cc:	00100793          	li	a5,1
    800014d0:	00b795bb          	sllw	a1,a5,a1
    800014d4:	00b765b3          	or	a1,a4,a1
    800014d8:	02b50823          	sb	a1,48(a0)
}
    800014dc:	00813403          	ld	s0,8(sp)
    800014e0:	01010113          	addi	sp,sp,16
    800014e4:	00008067          	ret

00000000800014e8 <_Z14allocateObjectP6slab_s>:

void* allocateObject(slab_t* slab)
{
    800014e8:	fd010113          	addi	sp,sp,-48
    800014ec:	02113423          	sd	ra,40(sp)
    800014f0:	02813023          	sd	s0,32(sp)
    800014f4:	00913c23          	sd	s1,24(sp)
    800014f8:	01213823          	sd	s2,16(sp)
    800014fc:	01313423          	sd	s3,8(sp)
    80001500:	03010413          	addi	s0,sp,48
    80001504:	00050913          	mv	s2,a0
    if(slab == nullptr)
    80001508:	08050863          	beqz	a0,80001598 <_Z14allocateObjectP6slab_s+0xb0>
        return nullptr;
    int index = -1;
    void* addr = nullptr;
    for(size_t i = 0;i < slab->numOfObjects;i++)
    8000150c:	00000493          	li	s1,0
    80001510:	01893783          	ld	a5,24(s2)
    80001514:	02f4fe63          	bgeu	s1,a5,80001550 <_Z14allocateObjectP6slab_s+0x68>
    {
        if(!checkSetIndex(slab, i))
    80001518:	0004899b          	sext.w	s3,s1
    8000151c:	00098593          	mv	a1,s3
    80001520:	00090513          	mv	a0,s2
    80001524:	00000097          	auipc	ra,0x0
    80001528:	f3c080e7          	jalr	-196(ra) # 80001460 <_Z13checkSetIndexP6slab_si>
    8000152c:	00050663          	beqz	a0,80001538 <_Z14allocateObjectP6slab_s+0x50>
    for(size_t i = 0;i < slab->numOfObjects;i++)
    80001530:	00148493          	addi	s1,s1,1
    80001534:	fddff06f          	j	80001510 <_Z14allocateObjectP6slab_s+0x28>
        {
            addr = (void*)((size_t)slab->startAddr + i*slab->owner->obj_size);
    80001538:	02893783          	ld	a5,40(s2)
    8000153c:	01093703          	ld	a4,16(s2)
    80001540:	06073703          	ld	a4,96(a4)
    80001544:	029704b3          	mul	s1,a4,s1
    80001548:	009784b3          	add	s1,a5,s1
            index = i;
            break;
    8000154c:	00c0006f          	j	80001558 <_Z14allocateObjectP6slab_s+0x70>
    void* addr = nullptr;
    80001550:	00000493          	li	s1,0
    int index = -1;
    80001554:	fff00993          	li	s3,-1
        }
    }
    if(addr == nullptr)
    80001558:	02048063          	beqz	s1,80001578 <_Z14allocateObjectP6slab_s+0x90>
        return nullptr;

    setAllocatedIndex(slab, index);
    8000155c:	00098593          	mv	a1,s3
    80001560:	00090513          	mv	a0,s2
    80001564:	00000097          	auipc	ra,0x0
    80001568:	f3c080e7          	jalr	-196(ra) # 800014a0 <_Z17setAllocatedIndexP6slab_si>
    slab->numOfAllocatedObjects++;
    8000156c:	02093783          	ld	a5,32(s2)
    80001570:	00178793          	addi	a5,a5,1
    80001574:	02f93023          	sd	a5,32(s2)

    return addr;
}
    80001578:	00048513          	mv	a0,s1
    8000157c:	02813083          	ld	ra,40(sp)
    80001580:	02013403          	ld	s0,32(sp)
    80001584:	01813483          	ld	s1,24(sp)
    80001588:	01013903          	ld	s2,16(sp)
    8000158c:	00813983          	ld	s3,8(sp)
    80001590:	03010113          	addi	sp,sp,48
    80001594:	00008067          	ret
        return nullptr;
    80001598:	00050493          	mv	s1,a0
    8000159c:	fddff06f          	j	80001578 <_Z14allocateObjectP6slab_s+0x90>

00000000800015a0 <_Z4fullP6slab_s>:

bool full(slab_t* slab)
{
    800015a0:	ff010113          	addi	sp,sp,-16
    800015a4:	00813423          	sd	s0,8(sp)
    800015a8:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == slab->numOfObjects;
    800015ac:	02053783          	ld	a5,32(a0)
    800015b0:	01853503          	ld	a0,24(a0)
    800015b4:	40f50533          	sub	a0,a0,a5
}
    800015b8:	00153513          	seqz	a0,a0
    800015bc:	00813403          	ld	s0,8(sp)
    800015c0:	01010113          	addi	sp,sp,16
    800015c4:	00008067          	ret

00000000800015c8 <_Z5emptyP6slab_s>:

bool empty(slab_t* slab)
{
    800015c8:	ff010113          	addi	sp,sp,-16
    800015cc:	00813423          	sd	s0,8(sp)
    800015d0:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == 0;
    800015d4:	02053503          	ld	a0,32(a0)
}
    800015d8:	00153513          	seqz	a0,a0
    800015dc:	00813403          	ld	s0,8(sp)
    800015e0:	01010113          	addi	sp,sp,16
    800015e4:	00008067          	ret

00000000800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>:

void insertIntoSlabList(slab_t* slab, slab_t** slab_head)
{
    800015e8:	ff010113          	addi	sp,sp,-16
    800015ec:	00813423          	sd	s0,8(sp)
    800015f0:	01010413          	addi	s0,sp,16
    if(slab == nullptr)
    800015f4:	00050e63          	beqz	a0,80001610 <_Z18insertIntoSlabListP6slab_sPS0_+0x28>
        return;
    slab->prev = nullptr;
    800015f8:	00053023          	sd	zero,0(a0)
    slab->next = *slab_head;
    800015fc:	0005b783          	ld	a5,0(a1)
    80001600:	00f53423          	sd	a5,8(a0)
    if(*slab_head != nullptr)
    80001604:	00078463          	beqz	a5,8000160c <_Z18insertIntoSlabListP6slab_sPS0_+0x24>
        (*slab_head)->prev = slab;
    80001608:	00a7b023          	sd	a0,0(a5)
    *slab_head = slab;
    8000160c:	00a5b023          	sd	a0,0(a1)
}
    80001610:	00813403          	ld	s0,8(sp)
    80001614:	01010113          	addi	sp,sp,16
    80001618:	00008067          	ret

000000008000161c <_Z18removeFromSlabListP6slab_sPS0_>:

void removeFromSlabList(slab_t* slab, slab_t** slab_head)
{
    8000161c:	ff010113          	addi	sp,sp,-16
    80001620:	00813423          	sd	s0,8(sp)
    80001624:	01010413          	addi	s0,sp,16
    if(slab->prev == nullptr) //same as slab == *slab_head
    80001628:	00053783          	ld	a5,0(a0)
    8000162c:	02078663          	beqz	a5,80001658 <_Z18removeFromSlabListP6slab_sPS0_+0x3c>
        (*slab_head) = slab->next;
        slab->next = slab->prev = nullptr;
    }
    else
    {
        slab->prev->next = slab->next;
    80001630:	00853703          	ld	a4,8(a0)
    80001634:	00e7b423          	sd	a4,8(a5)
        if(slab->next) slab->next->prev = slab->prev;
    80001638:	00070663          	beqz	a4,80001644 <_Z18removeFromSlabListP6slab_sPS0_+0x28>
    8000163c:	00053783          	ld	a5,0(a0)
    80001640:	00f73023          	sd	a5,0(a4)
        slab->next = slab->prev = nullptr;
    80001644:	00053023          	sd	zero,0(a0)
    80001648:	00053423          	sd	zero,8(a0)
    }
}
    8000164c:	00813403          	ld	s0,8(sp)
    80001650:	01010113          	addi	sp,sp,16
    80001654:	00008067          	ret
        if(slab->next) slab->next->prev = nullptr;
    80001658:	00853783          	ld	a5,8(a0)
    8000165c:	00078463          	beqz	a5,80001664 <_Z18removeFromSlabListP6slab_sPS0_+0x48>
    80001660:	0007b023          	sd	zero,0(a5)
        (*slab_head) = slab->next;
    80001664:	00853783          	ld	a5,8(a0)
    80001668:	00f5b023          	sd	a5,0(a1)
        slab->next = slab->prev = nullptr;
    8000166c:	00053023          	sd	zero,0(a0)
    80001670:	00053423          	sd	zero,8(a0)
    80001674:	fd9ff06f          	j	8000164c <_Z18removeFromSlabListP6slab_sPS0_+0x30>

0000000080001678 <_Z16putPartialToFullP12kmem_cache_s>:

void putPartialToFull(kmem_cache_t* cachep)
{
    80001678:	fe010113          	addi	sp,sp,-32
    8000167c:	00113c23          	sd	ra,24(sp)
    80001680:	00813823          	sd	s0,16(sp)
    80001684:	00913423          	sd	s1,8(sp)
    80001688:	01213023          	sd	s2,0(sp)
    8000168c:	02010413          	addi	s0,sp,32
    80001690:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_partial;
    80001694:	05053903          	ld	s2,80(a0)
    removeFromSlabList(slab, &cachep->slabs_partial);
    80001698:	05050593          	addi	a1,a0,80
    8000169c:	00090513          	mv	a0,s2
    800016a0:	00000097          	auipc	ra,0x0
    800016a4:	f7c080e7          	jalr	-132(ra) # 8000161c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_full);
    800016a8:	04848593          	addi	a1,s1,72
    800016ac:	00090513          	mv	a0,s2
    800016b0:	00000097          	auipc	ra,0x0
    800016b4:	f38080e7          	jalr	-200(ra) # 800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    800016b8:	01813083          	ld	ra,24(sp)
    800016bc:	01013403          	ld	s0,16(sp)
    800016c0:	00813483          	ld	s1,8(sp)
    800016c4:	00013903          	ld	s2,0(sp)
    800016c8:	02010113          	addi	sp,sp,32
    800016cc:	00008067          	ret

00000000800016d0 <_Z17putEmptyToPartialP12kmem_cache_s>:

void putEmptyToPartial(kmem_cache_t* cachep)
{
    800016d0:	fe010113          	addi	sp,sp,-32
    800016d4:	00113c23          	sd	ra,24(sp)
    800016d8:	00813823          	sd	s0,16(sp)
    800016dc:	00913423          	sd	s1,8(sp)
    800016e0:	01213023          	sd	s2,0(sp)
    800016e4:	02010413          	addi	s0,sp,32
    800016e8:	00050493          	mv	s1,a0
    slab_t* slab = cachep->slabs_empty;
    800016ec:	04053903          	ld	s2,64(a0)
    removeFromSlabList(slab, &cachep->slabs_empty);
    800016f0:	04050593          	addi	a1,a0,64
    800016f4:	00090513          	mv	a0,s2
    800016f8:	00000097          	auipc	ra,0x0
    800016fc:	f24080e7          	jalr	-220(ra) # 8000161c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    80001700:	05048593          	addi	a1,s1,80
    80001704:	00090513          	mv	a0,s2
    80001708:	00000097          	auipc	ra,0x0
    8000170c:	ee0080e7          	jalr	-288(ra) # 800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001710:	01813083          	ld	ra,24(sp)
    80001714:	01013403          	ld	s0,16(sp)
    80001718:	00813483          	ld	s1,8(sp)
    8000171c:	00013903          	ld	s2,0(sp)
    80001720:	02010113          	addi	sp,sp,32
    80001724:	00008067          	ret

0000000080001728 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>:

void removeFullSlab(kmem_cache_t* cachep, slab_t* slab)
{
    80001728:	fe010113          	addi	sp,sp,-32
    8000172c:	00113c23          	sd	ra,24(sp)
    80001730:	00813823          	sd	s0,16(sp)
    80001734:	00913423          	sd	s1,8(sp)
    80001738:	01213023          	sd	s2,0(sp)
    8000173c:	02010413          	addi	s0,sp,32
    80001740:	00050913          	mv	s2,a0
    80001744:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_full);
    80001748:	04850593          	addi	a1,a0,72
    8000174c:	00048513          	mv	a0,s1
    80001750:	00000097          	auipc	ra,0x0
    80001754:	ecc080e7          	jalr	-308(ra) # 8000161c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_partial);
    80001758:	05090593          	addi	a1,s2,80
    8000175c:	00048513          	mv	a0,s1
    80001760:	00000097          	auipc	ra,0x0
    80001764:	e88080e7          	jalr	-376(ra) # 800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    80001768:	01813083          	ld	ra,24(sp)
    8000176c:	01013403          	ld	s0,16(sp)
    80001770:	00813483          	ld	s1,8(sp)
    80001774:	00013903          	ld	s2,0(sp)
    80001778:	02010113          	addi	sp,sp,32
    8000177c:	00008067          	ret

0000000080001780 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>:

void removePartialSlab(kmem_cache_t * cachep, slab_t* slab)
{
    80001780:	fe010113          	addi	sp,sp,-32
    80001784:	00113c23          	sd	ra,24(sp)
    80001788:	00813823          	sd	s0,16(sp)
    8000178c:	00913423          	sd	s1,8(sp)
    80001790:	01213023          	sd	s2,0(sp)
    80001794:	02010413          	addi	s0,sp,32
    80001798:	00050913          	mv	s2,a0
    8000179c:	00058493          	mv	s1,a1
    removeFromSlabList(slab, &cachep->slabs_partial);
    800017a0:	05050593          	addi	a1,a0,80
    800017a4:	00048513          	mv	a0,s1
    800017a8:	00000097          	auipc	ra,0x0
    800017ac:	e74080e7          	jalr	-396(ra) # 8000161c <_Z18removeFromSlabListP6slab_sPS0_>
    insertIntoSlabList(slab, &cachep->slabs_empty);
    800017b0:	04090593          	addi	a1,s2,64
    800017b4:	00048513          	mv	a0,s1
    800017b8:	00000097          	auipc	ra,0x0
    800017bc:	e30080e7          	jalr	-464(ra) # 800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>
}
    800017c0:	01813083          	ld	ra,24(sp)
    800017c4:	01013403          	ld	s0,16(sp)
    800017c8:	00813483          	ld	s1,8(sp)
    800017cc:	00013903          	ld	s2,0(sp)
    800017d0:	02010113          	addi	sp,sp,32
    800017d4:	00008067          	ret

00000000800017d8 <_Z12allocateSlabP12kmem_cache_s>:

void allocateSlab(kmem_cache_t* cachep)
{
    800017d8:	fd010113          	addi	sp,sp,-48
    800017dc:	02113423          	sd	ra,40(sp)
    800017e0:	02813023          	sd	s0,32(sp)
    800017e4:	00913c23          	sd	s1,24(sp)
    800017e8:	01213823          	sd	s2,16(sp)
    800017ec:	01313423          	sd	s3,8(sp)
    800017f0:	03010413          	addi	s0,sp,48
    800017f4:	00050993          	mv	s3,a0
    slab_t* newSlab = (slab_t*)buddy_alloc(cachep->slab_size);
    800017f8:	05853503          	ld	a0,88(a0)
    800017fc:	00001097          	auipc	ra,0x1
    80001800:	78c080e7          	jalr	1932(ra) # 80002f88 <_Z11buddy_allocm>
    if(newSlab == nullptr)
    80001804:	0a050063          	beqz	a0,800018a4 <_Z12allocateSlabP12kmem_cache_s+0xcc>
    80001808:	00050493          	mv	s1,a0
        return;
    newSlab->next = cachep->slabs_empty;
    8000180c:	0409b783          	ld	a5,64(s3)
    80001810:	00f53423          	sd	a5,8(a0)
    if(cachep->slabs_empty != nullptr)
    80001814:	00078463          	beqz	a5,8000181c <_Z12allocateSlabP12kmem_cache_s+0x44>
        cachep->slabs_empty->prev = newSlab;
    80001818:	00a7b023          	sd	a0,0(a5)
    cachep->slabs_empty = newSlab;
    8000181c:	0499b023          	sd	s1,64(s3)
    newSlab->prev = nullptr;
    80001820:	0004b023          	sd	zero,0(s1)

    newSlab->numOfAllocatedObjects = 0;
    80001824:	0204b023          	sd	zero,32(s1)
    newSlab->owner = cachep;
    80001828:	0134b823          	sd	s3,16(s1)
    size_t sizeInBytes = cachep->slab_size*BLOCK_SIZE;
    8000182c:	0589b683          	ld	a3,88(s3)
    80001830:	00c69693          	slli	a3,a3,0xc
    newSlab->numOfObjects = (sizeInBytes - sizeof(slab_t)) / cachep->obj_size; // TODO can this param be in cache ?
    80001834:	dd068693          	addi	a3,a3,-560
    80001838:	0609b783          	ld	a5,96(s3)
    8000183c:	02f6d6b3          	divu	a3,a3,a5
    80001840:	00d4bc23          	sd	a3,24(s1)
    newSlab->startAddr = (void*)((size_t)newSlab + sizeof(slab_t));
    80001844:	23048793          	addi	a5,s1,560
    80001848:	02f4b423          	sd	a5,40(s1)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    8000184c:	00000713          	li	a4,0
    80001850:	00768793          	addi	a5,a3,7
    80001854:	0037d793          	srli	a5,a5,0x3
    80001858:	00f77a63          	bgeu	a4,a5,8000186c <_Z12allocateSlabP12kmem_cache_s+0x94>
        newSlab->allocated[i] = 0;
    8000185c:	00e487b3          	add	a5,s1,a4
    80001860:	02078823          	sb	zero,48(a5)
    for(size_t i = 0; i < (newSlab->numOfObjects + 7) / 8;i++)
    80001864:	00170713          	addi	a4,a4,1
    80001868:	fe9ff06f          	j	80001850 <_Z12allocateSlabP12kmem_cache_s+0x78>

    if(cachep->ctor != nullptr)
    8000186c:	0689b783          	ld	a5,104(s3)
    80001870:	02078a63          	beqz	a5,800018a4 <_Z12allocateSlabP12kmem_cache_s+0xcc>
    {
        for(size_t i = 0;i < newSlab->numOfObjects;i++)
    80001874:	00000913          	li	s2,0
    80001878:	0184b783          	ld	a5,24(s1)
    8000187c:	02f97463          	bgeu	s2,a5,800018a4 <_Z12allocateSlabP12kmem_cache_s+0xcc>
            cachep->ctor((void*)((size_t)newSlab->startAddr + i*newSlab->owner->obj_size));
    80001880:	0689b703          	ld	a4,104(s3)
    80001884:	0284b503          	ld	a0,40(s1)
    80001888:	0104b783          	ld	a5,16(s1)
    8000188c:	0607b783          	ld	a5,96(a5)
    80001890:	032787b3          	mul	a5,a5,s2
    80001894:	00f50533          	add	a0,a0,a5
    80001898:	000700e7          	jalr	a4
        for(size_t i = 0;i < newSlab->numOfObjects;i++)
    8000189c:	00190913          	addi	s2,s2,1
    800018a0:	fd9ff06f          	j	80001878 <_Z12allocateSlabP12kmem_cache_s+0xa0>
    }
}
    800018a4:	02813083          	ld	ra,40(sp)
    800018a8:	02013403          	ld	s0,32(sp)
    800018ac:	01813483          	ld	s1,24(sp)
    800018b0:	01013903          	ld	s2,16(sp)
    800018b4:	00813983          	ld	s3,8(sp)
    800018b8:	03010113          	addi	sp,sp,48
    800018bc:	00008067          	ret

00000000800018c0 <_Z18getOptimalSlabSizem>:

size_t getOptimalSlabSize(size_t obj_size)
{
    800018c0:	ff010113          	addi	sp,sp,-16
    800018c4:	00813423          	sd	s0,8(sp)
    800018c8:	01010413          	addi	s0,sp,16
    size_t bestSize = BLOCK_SIZE;
    800018cc:	00001737          	lui	a4,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    800018d0:	23050793          	addi	a5,a0,560
    800018d4:	00f77663          	bgeu	a4,a5,800018e0 <_Z18getOptimalSlabSizem+0x20>
        bestSize<<=1;
    800018d8:	00171713          	slli	a4,a4,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    800018dc:	ff5ff06f          	j	800018d0 <_Z18getOptimalSlabSizem+0x10>
    size_t optimalWaste = (bestSize - sizeof(slab_t)) % obj_size;
    800018e0:	dd070813          	addi	a6,a4,-560 # dd0 <_entry-0x7ffff230>
    800018e4:	02a87833          	remu	a6,a6,a0
    800018e8:	00070313          	mv	t1,a4
    size_t oldSize = bestSize;

    static size_t lowerConst = 1;
    static size_t highConst = 4;
    for(size_t i = lowerConst;i<=highConst;i++)
    800018ec:	00100693          	li	a3,1
    800018f0:	0080006f          	j	800018f8 <_Z18getOptimalSlabSizem+0x38>
    800018f4:	00168693          	addi	a3,a3,1
    800018f8:	00400793          	li	a5,4
    800018fc:	02d7e663          	bltu	a5,a3,80001928 <_Z18getOptimalSlabSizem+0x68>
    {
        size_t newSize = oldSize << i;
    80001900:	00d71633          	sll	a2,a4,a3
        size_t newWaste = (newSize - sizeof(slab_t)) % obj_size;
    80001904:	dd060793          	addi	a5,a2,-560
    80001908:	02a7f5b3          	remu	a1,a5,a0
        size_t numOfObjs = (newSize - sizeof(slab_t)) / obj_size;
    8000190c:	02a7d7b3          	divu	a5,a5,a0
        if(newWaste < optimalWaste && numOfObjs <= MAX_NUM_OF_OBJS)
    80001910:	ff05f2e3          	bgeu	a1,a6,800018f4 <_Z18getOptimalSlabSizem+0x34>
    80001914:	000018b7          	lui	a7,0x1
    80001918:	fcf8eee3          	bltu	a7,a5,800018f4 <_Z18getOptimalSlabSizem+0x34>
        {
            optimalWaste = newWaste;
    8000191c:	00058813          	mv	a6,a1
            bestSize = newSize;
    80001920:	00060313          	mv	t1,a2
    80001924:	fd1ff06f          	j	800018f4 <_Z18getOptimalSlabSizem+0x34>
            bestSize = newSize;
        }
    }*/

    return bestSize / BLOCK_SIZE;
}
    80001928:	00c35513          	srli	a0,t1,0xc
    8000192c:	00813403          	ld	s0,8(sp)
    80001930:	01010113          	addi	sp,sp,16
    80001934:	00008067          	ret

0000000080001938 <_Z8findSlabP12kmem_cache_sPKv>:

//finds the slab where objp is
slab_t* findSlab(kmem_cache_t* cachep, const void* objp)
{
    80001938:	ff010113          	addi	sp,sp,-16
    8000193c:	00813423          	sd	s0,8(sp)
    80001940:	01010413          	addi	s0,sp,16
    80001944:	00050613          	mv	a2,a0
    if(cachep == nullptr || objp == nullptr)
    80001948:	02050c63          	beqz	a0,80001980 <_Z8findSlabP12kmem_cache_sPKv+0x48>
    8000194c:	06058a63          	beqz	a1,800019c0 <_Z8findSlabP12kmem_cache_sPKv+0x88>
        return nullptr;
    slab_t* slab = cachep->slabs_full;
    80001950:	04853503          	ld	a0,72(a0)
    80001954:	0080006f          	j	8000195c <_Z8findSlabP12kmem_cache_sPKv+0x24>
    while(slab != nullptr)
    {
        size_t endAddr = (size_t)slab->startAddr + slab->numOfObjects*slab->owner->obj_size;
        if((size_t)objp >= (size_t)slab->startAddr && (size_t)objp < endAddr)
            return slab;
        slab = slab->next;
    80001958:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    8000195c:	02050863          	beqz	a0,8000198c <_Z8findSlabP12kmem_cache_sPKv+0x54>
        size_t endAddr = (size_t)slab->startAddr + slab->numOfObjects*slab->owner->obj_size;
    80001960:	02853703          	ld	a4,40(a0)
    80001964:	01853783          	ld	a5,24(a0)
    80001968:	01053683          	ld	a3,16(a0)
    8000196c:	0606b683          	ld	a3,96(a3)
    80001970:	02d787b3          	mul	a5,a5,a3
    80001974:	00f707b3          	add	a5,a4,a5
        if((size_t)objp >= (size_t)slab->startAddr && (size_t)objp < endAddr)
    80001978:	fee5e0e3          	bltu	a1,a4,80001958 <_Z8findSlabP12kmem_cache_sPKv+0x20>
    8000197c:	fcf5fee3          	bgeu	a1,a5,80001958 <_Z8findSlabP12kmem_cache_sPKv+0x20>
            return slab;
        slab = slab->next;
    }

    return nullptr;
}
    80001980:	00813403          	ld	s0,8(sp)
    80001984:	01010113          	addi	sp,sp,16
    80001988:	00008067          	ret
    slab = cachep->slabs_partial;
    8000198c:	05063503          	ld	a0,80(a2)
    80001990:	0080006f          	j	80001998 <_Z8findSlabP12kmem_cache_sPKv+0x60>
        slab = slab->next;
    80001994:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    80001998:	fe0504e3          	beqz	a0,80001980 <_Z8findSlabP12kmem_cache_sPKv+0x48>
        size_t endAddr = (size_t)slab->startAddr + slab->numOfObjects*slab->owner->obj_size;
    8000199c:	02853703          	ld	a4,40(a0)
    800019a0:	01853783          	ld	a5,24(a0)
    800019a4:	01053683          	ld	a3,16(a0)
    800019a8:	0606b683          	ld	a3,96(a3)
    800019ac:	02d787b3          	mul	a5,a5,a3
    800019b0:	00f707b3          	add	a5,a4,a5
        if((size_t)objp >= (size_t)slab->startAddr && (size_t)objp < endAddr)
    800019b4:	fee5e0e3          	bltu	a1,a4,80001994 <_Z8findSlabP12kmem_cache_sPKv+0x5c>
    800019b8:	fcf5fee3          	bgeu	a1,a5,80001994 <_Z8findSlabP12kmem_cache_sPKv+0x5c>
    800019bc:	fc5ff06f          	j	80001980 <_Z8findSlabP12kmem_cache_sPKv+0x48>
        return nullptr;
    800019c0:	00058513          	mv	a0,a1
    800019c4:	fbdff06f          	j	80001980 <_Z8findSlabP12kmem_cache_sPKv+0x48>

00000000800019c8 <_Z19resetAllocatedIndexP6slab_si>:

void resetAllocatedIndex(slab_t* slab, int index)
{
    800019c8:	ff010113          	addi	sp,sp,-16
    800019cc:	00813423          	sd	s0,8(sp)
    800019d0:	01010413          	addi	s0,sp,16
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] & ~(1 << (index%8));
    800019d4:	41f5d79b          	sraiw	a5,a1,0x1f
    800019d8:	01d7d79b          	srliw	a5,a5,0x1d
    800019dc:	00b785bb          	addw	a1,a5,a1
    800019e0:	4035d71b          	sraiw	a4,a1,0x3
    800019e4:	00e50533          	add	a0,a0,a4
    800019e8:	03050703          	lb	a4,48(a0)
    800019ec:	0075f593          	andi	a1,a1,7
    800019f0:	40f585bb          	subw	a1,a1,a5
    800019f4:	00100793          	li	a5,1
    800019f8:	00b795bb          	sllw	a1,a5,a1
    800019fc:	fff5c593          	not	a1,a1
    80001a00:	00b775b3          	and	a1,a4,a1
    80001a04:	02b50823          	sb	a1,48(a0)
}
    80001a08:	00813403          	ld	s0,8(sp)
    80001a0c:	01010113          	addi	sp,sp,16
    80001a10:	00008067          	ret

0000000080001a14 <_Z13printSlabInfoP6slab_s>:

void printSlabInfo(slab_t* slab)
{
    80001a14:	fe010113          	addi	sp,sp,-32
    80001a18:	00113c23          	sd	ra,24(sp)
    80001a1c:	00813823          	sd	s0,16(sp)
    80001a20:	00913423          	sd	s1,8(sp)
    80001a24:	02010413          	addi	s0,sp,32
    80001a28:	00050493          	mv	s1,a0
    KConsole::trapPrintString("One slab info---------\n");
    80001a2c:	00006517          	auipc	a0,0x6
    80001a30:	60450513          	addi	a0,a0,1540 # 80008030 <CONSOLE_STATUS+0x20>
    80001a34:	00002097          	auipc	ra,0x2
    80001a38:	ef4080e7          	jalr	-268(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab address ",(size_t)slab,16);
    80001a3c:	01000613          	li	a2,16
    80001a40:	00048593          	mv	a1,s1
    80001a44:	00006517          	auipc	a0,0x6
    80001a48:	60450513          	addi	a0,a0,1540 # 80008048 <CONSOLE_STATUS+0x38>
    80001a4c:	00002097          	auipc	ra,0x2
    80001a50:	fb4080e7          	jalr	-76(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of allocated objects ",slab->numOfAllocatedObjects);
    80001a54:	00a00613          	li	a2,10
    80001a58:	0204b583          	ld	a1,32(s1)
    80001a5c:	00006517          	auipc	a0,0x6
    80001a60:	5fc50513          	addi	a0,a0,1532 # 80008058 <CONSOLE_STATUS+0x48>
    80001a64:	00002097          	auipc	ra,0x2
    80001a68:	f9c080e7          	jalr	-100(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Number of objects ", slab->numOfObjects);
    80001a6c:	00a00613          	li	a2,10
    80001a70:	0184b583          	ld	a1,24(s1)
    80001a74:	00006517          	auipc	a0,0x6
    80001a78:	60450513          	addi	a0,a0,1540 # 80008078 <CONSOLE_STATUS+0x68>
    80001a7c:	00002097          	auipc	ra,0x2
    80001a80:	f84080e7          	jalr	-124(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Slab start addr ", (size_t)slab->startAddr, 16);
    80001a84:	01000613          	li	a2,16
    80001a88:	0284b583          	ld	a1,40(s1)
    80001a8c:	00006517          	auipc	a0,0x6
    80001a90:	60450513          	addi	a0,a0,1540 # 80008090 <CONSOLE_STATUS+0x80>
    80001a94:	00002097          	auipc	ra,0x2
    80001a98:	f6c080e7          	jalr	-148(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
        KConsole::trapPrintInt(i);
        KConsole::trapPrintString(" : ");
        KConsole::trapPrintInt((size_t)slab->allocated[i], 16);
        KConsole::trapPrintString("\n");
    }*/
}
    80001a9c:	01813083          	ld	ra,24(sp)
    80001aa0:	01013403          	ld	s0,16(sp)
    80001aa4:	00813483          	ld	s1,8(sp)
    80001aa8:	02010113          	addi	sp,sp,32
    80001aac:	00008067          	ret

0000000080001ab0 <_Z16free_slab_objectP6slab_sPKv>:

void free_slab_object(slab_t* slab, const void* objp)
{
    if(slab == nullptr || objp == nullptr)
    80001ab0:	12050863          	beqz	a0,80001be0 <_Z16free_slab_objectP6slab_sPKv+0x130>
{
    80001ab4:	fd010113          	addi	sp,sp,-48
    80001ab8:	02113423          	sd	ra,40(sp)
    80001abc:	02813023          	sd	s0,32(sp)
    80001ac0:	00913c23          	sd	s1,24(sp)
    80001ac4:	01213823          	sd	s2,16(sp)
    80001ac8:	01313423          	sd	s3,8(sp)
    80001acc:	01413023          	sd	s4,0(sp)
    80001ad0:	03010413          	addi	s0,sp,48
    80001ad4:	00050493          	mv	s1,a0
    80001ad8:	00058913          	mv	s2,a1
    if(slab == nullptr || objp == nullptr)
    80001adc:	08058263          	beqz	a1,80001b60 <_Z16free_slab_objectP6slab_sPKv+0xb0>
        return;
    int indexOfObject = ((size_t)objp - (size_t)slab->startAddr) / slab->owner->obj_size;
    80001ae0:	02853783          	ld	a5,40(a0)
    80001ae4:	40f589b3          	sub	s3,a1,a5
    80001ae8:	01053a03          	ld	s4,16(a0)
    80001aec:	060a3703          	ld	a4,96(s4)
    80001af0:	02e9d9b3          	divu	s3,s3,a4
    80001af4:	0009899b          	sext.w	s3,s3
    if((size_t)objp != (size_t)slab->startAddr + indexOfObject*slab->owner->obj_size) //address not allocated, random address
    80001af8:	03370733          	mul	a4,a4,s3
    80001afc:	00e787b3          	add	a5,a5,a4
    80001b00:	06f59063          	bne	a1,a5,80001b60 <_Z16free_slab_objectP6slab_sPKv+0xb0>
        return;

    if(!checkSetIndex(slab, indexOfObject))
    80001b04:	00098593          	mv	a1,s3
    80001b08:	00000097          	auipc	ra,0x0
    80001b0c:	958080e7          	jalr	-1704(ra) # 80001460 <_Z13checkSetIndexP6slab_si>
    80001b10:	04050863          	beqz	a0,80001b60 <_Z16free_slab_objectP6slab_sPKv+0xb0>
        return;

    kmem_cache_t* cachep = slab->owner;
    if(cachep->dtor != nullptr)
    80001b14:	070a3783          	ld	a5,112(s4)
    80001b18:	00078663          	beqz	a5,80001b24 <_Z16free_slab_objectP6slab_sPKv+0x74>
        cachep->dtor((void*)objp);
    80001b1c:	00090513          	mv	a0,s2
    80001b20:	000780e7          	jalr	a5
    if(cachep->ctor != nullptr)
    80001b24:	068a3783          	ld	a5,104(s4)
    80001b28:	00078663          	beqz	a5,80001b34 <_Z16free_slab_objectP6slab_sPKv+0x84>
        cachep->ctor((void*)objp);
    80001b2c:	00090513          	mv	a0,s2
    80001b30:	000780e7          	jalr	a5

    resetAllocatedIndex(slab, indexOfObject);
    80001b34:	00098593          	mv	a1,s3
    80001b38:	00048513          	mv	a0,s1
    80001b3c:	00000097          	auipc	ra,0x0
    80001b40:	e8c080e7          	jalr	-372(ra) # 800019c8 <_Z19resetAllocatedIndexP6slab_si>
    if(slab->numOfObjects == slab->numOfAllocatedObjects)
    80001b44:	0184b703          	ld	a4,24(s1)
    80001b48:	0204b783          	ld	a5,32(s1)
    80001b4c:	02f70a63          	beq	a4,a5,80001b80 <_Z16free_slab_objectP6slab_sPKv+0xd0>
        removeFullSlab(slab->owner, slab);
        slab->numOfAllocatedObjects--;
        if(empty(slab))
            removePartialSlab(slab->owner, slab);
    }
    else if(slab->numOfAllocatedObjects == 1)
    80001b50:	00100713          	li	a4,1
    80001b54:	06e78663          	beq	a5,a4,80001bc0 <_Z16free_slab_objectP6slab_sPKv+0x110>
    {
        removePartialSlab(slab->owner, slab);
        slab->numOfAllocatedObjects--;
    }
    else
        slab->numOfAllocatedObjects--;
    80001b58:	fff78793          	addi	a5,a5,-1
    80001b5c:	02f4b023          	sd	a5,32(s1)
}
    80001b60:	02813083          	ld	ra,40(sp)
    80001b64:	02013403          	ld	s0,32(sp)
    80001b68:	01813483          	ld	s1,24(sp)
    80001b6c:	01013903          	ld	s2,16(sp)
    80001b70:	00813983          	ld	s3,8(sp)
    80001b74:	00013a03          	ld	s4,0(sp)
    80001b78:	03010113          	addi	sp,sp,48
    80001b7c:	00008067          	ret
        removeFullSlab(slab->owner, slab);
    80001b80:	00048593          	mv	a1,s1
    80001b84:	0104b503          	ld	a0,16(s1)
    80001b88:	00000097          	auipc	ra,0x0
    80001b8c:	ba0080e7          	jalr	-1120(ra) # 80001728 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>
        slab->numOfAllocatedObjects--;
    80001b90:	0204b783          	ld	a5,32(s1)
    80001b94:	fff78793          	addi	a5,a5,-1
    80001b98:	02f4b023          	sd	a5,32(s1)
        if(empty(slab))
    80001b9c:	00048513          	mv	a0,s1
    80001ba0:	00000097          	auipc	ra,0x0
    80001ba4:	a28080e7          	jalr	-1496(ra) # 800015c8 <_Z5emptyP6slab_s>
    80001ba8:	fa050ce3          	beqz	a0,80001b60 <_Z16free_slab_objectP6slab_sPKv+0xb0>
            removePartialSlab(slab->owner, slab);
    80001bac:	00048593          	mv	a1,s1
    80001bb0:	0104b503          	ld	a0,16(s1)
    80001bb4:	00000097          	auipc	ra,0x0
    80001bb8:	bcc080e7          	jalr	-1076(ra) # 80001780 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
    80001bbc:	fa5ff06f          	j	80001b60 <_Z16free_slab_objectP6slab_sPKv+0xb0>
        removePartialSlab(slab->owner, slab);
    80001bc0:	00048593          	mv	a1,s1
    80001bc4:	0104b503          	ld	a0,16(s1)
    80001bc8:	00000097          	auipc	ra,0x0
    80001bcc:	bb8080e7          	jalr	-1096(ra) # 80001780 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
        slab->numOfAllocatedObjects--;
    80001bd0:	0204b783          	ld	a5,32(s1)
    80001bd4:	fff78793          	addi	a5,a5,-1
    80001bd8:	02f4b023          	sd	a5,32(s1)
    80001bdc:	f85ff06f          	j	80001b60 <_Z16free_slab_objectP6slab_sPKv+0xb0>
    80001be0:	00008067          	ret

0000000080001be4 <_Z16kmem_cache_allocP12kmem_cache_s>:
    init_cache(newCache, name, getOptimalSlabSize(size), size, ctor,dtor);
    return newCache;
}

void *kmem_cache_alloc(kmem_cache_t *cachep)
{
    80001be4:	fe010113          	addi	sp,sp,-32
    80001be8:	00113c23          	sd	ra,24(sp)
    80001bec:	00813823          	sd	s0,16(sp)
    80001bf0:	00913423          	sd	s1,8(sp)
    80001bf4:	01213023          	sd	s2,0(sp)
    80001bf8:	02010413          	addi	s0,sp,32
    80001bfc:	00050493          	mv	s1,a0
    if(cachep == nullptr)
    80001c00:	10050a63          	beqz	a0,80001d14 <_Z16kmem_cache_allocP12kmem_cache_s+0x130>
        return nullptr;

    if(cachep->slabs_partial != nullptr)
    80001c04:	05053503          	ld	a0,80(a0)
    80001c08:	04051a63          	bnez	a0,80001c5c <_Z16kmem_cache_allocP12kmem_cache_s+0x78>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
        if(full(cachep->slabs_partial))
            putPartialToFull(cachep);
        return allocatedAddr;
    }
    else if(cachep->slabs_empty != nullptr)
    80001c0c:	0404b503          	ld	a0,64(s1)
    80001c10:	08050a63          	beqz	a0,80001ca4 <_Z16kmem_cache_allocP12kmem_cache_s+0xc0>
    {
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001c14:	00000097          	auipc	ra,0x0
    80001c18:	8d4080e7          	jalr	-1836(ra) # 800014e8 <_Z14allocateObjectP6slab_s>
    80001c1c:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001c20:	0404b503          	ld	a0,64(s1)
    80001c24:	00000097          	auipc	ra,0x0
    80001c28:	9a4080e7          	jalr	-1628(ra) # 800015c8 <_Z5emptyP6slab_s>
    80001c2c:	04051663          	bnez	a0,80001c78 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        {
            putEmptyToPartial(cachep);
    80001c30:	00048513          	mv	a0,s1
    80001c34:	00000097          	auipc	ra,0x0
    80001c38:	a9c080e7          	jalr	-1380(ra) # 800016d0 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001c3c:	0504b503          	ld	a0,80(s1)
    80001c40:	00000097          	auipc	ra,0x0
    80001c44:	960080e7          	jalr	-1696(ra) # 800015a0 <_Z4fullP6slab_s>
    80001c48:	02050863          	beqz	a0,80001c78 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
                putPartialToFull(cachep);
    80001c4c:	00048513          	mv	a0,s1
    80001c50:	00000097          	auipc	ra,0x0
    80001c54:	a28080e7          	jalr	-1496(ra) # 80001678 <_Z16putPartialToFullP12kmem_cache_s>
        }
        return allocatedAddr;
    80001c58:	0200006f          	j	80001c78 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
    80001c5c:	00000097          	auipc	ra,0x0
    80001c60:	88c080e7          	jalr	-1908(ra) # 800014e8 <_Z14allocateObjectP6slab_s>
    80001c64:	00050913          	mv	s2,a0
        if(full(cachep->slabs_partial))
    80001c68:	0504b503          	ld	a0,80(s1)
    80001c6c:	00000097          	auipc	ra,0x0
    80001c70:	934080e7          	jalr	-1740(ra) # 800015a0 <_Z4fullP6slab_s>
    80001c74:	02051063          	bnez	a0,80001c94 <_Z16kmem_cache_allocP12kmem_cache_s+0xb0>
                putPartialToFull(cachep);
        }
        return allocatedAddr;
    }
    return nullptr;
}
    80001c78:	00090513          	mv	a0,s2
    80001c7c:	01813083          	ld	ra,24(sp)
    80001c80:	01013403          	ld	s0,16(sp)
    80001c84:	00813483          	ld	s1,8(sp)
    80001c88:	00013903          	ld	s2,0(sp)
    80001c8c:	02010113          	addi	sp,sp,32
    80001c90:	00008067          	ret
            putPartialToFull(cachep);
    80001c94:	00048513          	mv	a0,s1
    80001c98:	00000097          	auipc	ra,0x0
    80001c9c:	9e0080e7          	jalr	-1568(ra) # 80001678 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001ca0:	fd9ff06f          	j	80001c78 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        allocateSlab(cachep);
    80001ca4:	00048513          	mv	a0,s1
    80001ca8:	00000097          	auipc	ra,0x0
    80001cac:	b30080e7          	jalr	-1232(ra) # 800017d8 <_Z12allocateSlabP12kmem_cache_s>
        if(cachep->slabs_empty == nullptr)
    80001cb0:	0404b903          	ld	s2,64(s1)
    80001cb4:	04090863          	beqz	s2,80001d04 <_Z16kmem_cache_allocP12kmem_cache_s+0x120>
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001cb8:	00090513          	mv	a0,s2
    80001cbc:	00000097          	auipc	ra,0x0
    80001cc0:	82c080e7          	jalr	-2004(ra) # 800014e8 <_Z14allocateObjectP6slab_s>
    80001cc4:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001cc8:	0404b503          	ld	a0,64(s1)
    80001ccc:	00000097          	auipc	ra,0x0
    80001cd0:	8fc080e7          	jalr	-1796(ra) # 800015c8 <_Z5emptyP6slab_s>
    80001cd4:	fa0512e3          	bnez	a0,80001c78 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
            putEmptyToPartial(cachep);
    80001cd8:	00048513          	mv	a0,s1
    80001cdc:	00000097          	auipc	ra,0x0
    80001ce0:	9f4080e7          	jalr	-1548(ra) # 800016d0 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001ce4:	0504b503          	ld	a0,80(s1)
    80001ce8:	00000097          	auipc	ra,0x0
    80001cec:	8b8080e7          	jalr	-1864(ra) # 800015a0 <_Z4fullP6slab_s>
    80001cf0:	f80504e3          	beqz	a0,80001c78 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
                putPartialToFull(cachep);
    80001cf4:	00048513          	mv	a0,s1
    80001cf8:	00000097          	auipc	ra,0x0
    80001cfc:	980080e7          	jalr	-1664(ra) # 80001678 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001d00:	f79ff06f          	j	80001c78 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
            cachep->errors|=EXPAND_ERROR;
    80001d04:	0784a783          	lw	a5,120(s1)
    80001d08:	0017e793          	ori	a5,a5,1
    80001d0c:	06f4ac23          	sw	a5,120(s1)
            return nullptr;
    80001d10:	f69ff06f          	j	80001c78 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>
        return nullptr;
    80001d14:	00050913          	mv	s2,a0
    80001d18:	f61ff06f          	j	80001c78 <_Z16kmem_cache_allocP12kmem_cache_s+0x94>

0000000080001d1c <_Z17kmem_cache_createPKcmPFvPvES3_>:
{
    80001d1c:	fc010113          	addi	sp,sp,-64
    80001d20:	02113c23          	sd	ra,56(sp)
    80001d24:	02813823          	sd	s0,48(sp)
    80001d28:	02913423          	sd	s1,40(sp)
    80001d2c:	03213023          	sd	s2,32(sp)
    80001d30:	01313c23          	sd	s3,24(sp)
    80001d34:	01413823          	sd	s4,16(sp)
    80001d38:	01513423          	sd	s5,8(sp)
    80001d3c:	04010413          	addi	s0,sp,64
    80001d40:	00050993          	mv	s3,a0
    80001d44:	00058913          	mv	s2,a1
    80001d48:	00060a13          	mv	s4,a2
    80001d4c:	00068a93          	mv	s5,a3
    kmem_cache_t* newCache = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80001d50:	00007517          	auipc	a0,0x7
    80001d54:	ca053503          	ld	a0,-864(a0) # 800089f0 <_ZL13slabAllocator>
    80001d58:	06850513          	addi	a0,a0,104
    80001d5c:	00000097          	auipc	ra,0x0
    80001d60:	e88080e7          	jalr	-376(ra) # 80001be4 <_Z16kmem_cache_allocP12kmem_cache_s>
    80001d64:	00050493          	mv	s1,a0
    if(newCache == nullptr)
    80001d68:	02050863          	beqz	a0,80001d98 <_Z17kmem_cache_createPKcmPFvPvES3_+0x7c>
    init_cache(newCache, name, getOptimalSlabSize(size), size, ctor,dtor);
    80001d6c:	00090513          	mv	a0,s2
    80001d70:	00000097          	auipc	ra,0x0
    80001d74:	b50080e7          	jalr	-1200(ra) # 800018c0 <_Z18getOptimalSlabSizem>
    80001d78:	00050613          	mv	a2,a0
    80001d7c:	000a8793          	mv	a5,s5
    80001d80:	000a0713          	mv	a4,s4
    80001d84:	00090693          	mv	a3,s2
    80001d88:	00098593          	mv	a1,s3
    80001d8c:	00048513          	mv	a0,s1
    80001d90:	fffff097          	auipc	ra,0xfffff
    80001d94:	5d0080e7          	jalr	1488(ra) # 80001360 <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>
}
    80001d98:	00048513          	mv	a0,s1
    80001d9c:	03813083          	ld	ra,56(sp)
    80001da0:	03013403          	ld	s0,48(sp)
    80001da4:	02813483          	ld	s1,40(sp)
    80001da8:	02013903          	ld	s2,32(sp)
    80001dac:	01813983          	ld	s3,24(sp)
    80001db0:	01013a03          	ld	s4,16(sp)
    80001db4:	00813a83          	ld	s5,8(sp)
    80001db8:	04010113          	addi	sp,sp,64
    80001dbc:	00008067          	ret

0000000080001dc0 <_Z9kmem_initPvi>:
{
    80001dc0:	fe010113          	addi	sp,sp,-32
    80001dc4:	00113c23          	sd	ra,24(sp)
    80001dc8:	00813823          	sd	s0,16(sp)
    80001dcc:	00913423          	sd	s1,8(sp)
    80001dd0:	02010413          	addi	s0,sp,32
    buddyAllocator* buddy = buddy_init(space, block_num);
    80001dd4:	00001097          	auipc	ra,0x1
    80001dd8:	3b4080e7          	jalr	948(ra) # 80003188 <_Z10buddy_initPvm>
    slabAllocator = slab_allocator_init(buddy);
    80001ddc:	fffff097          	auipc	ra,0xfffff
    80001de0:	610080e7          	jalr	1552(ra) # 800013ec <_Z19slab_allocator_initP14buddyAllocator>
    80001de4:	00007497          	auipc	s1,0x7
    80001de8:	c0c48493          	addi	s1,s1,-1012 # 800089f0 <_ZL13slabAllocator>
    80001dec:	00a4b023          	sd	a0,0(s1)
    cacheOfSlabs = kmem_cache_create("Cache of slabs", sizeof(slab_t), nullptr,nullptr);
    80001df0:	00000693          	li	a3,0
    80001df4:	00000613          	li	a2,0
    80001df8:	23000593          	li	a1,560
    80001dfc:	00006517          	auipc	a0,0x6
    80001e00:	2ac50513          	addi	a0,a0,684 # 800080a8 <CONSOLE_STATUS+0x98>
    80001e04:	00000097          	auipc	ra,0x0
    80001e08:	f18080e7          	jalr	-232(ra) # 80001d1c <_Z17kmem_cache_createPKcmPFvPvES3_>
    80001e0c:	00a4b423          	sd	a0,8(s1)
}
    80001e10:	01813083          	ld	ra,24(sp)
    80001e14:	01013403          	ld	s0,16(sp)
    80001e18:	00813483          	ld	s1,8(sp)
    80001e1c:	02010113          	addi	sp,sp,32
    80001e20:	00008067          	ret

0000000080001e24 <_Z15kmem_cache_freeP12kmem_cache_sPv>:

void kmem_cache_free(kmem_cache_t *cachep, void *objp)
{
    if(cachep == nullptr || objp == nullptr)
    80001e24:	04050663          	beqz	a0,80001e70 <_Z15kmem_cache_freeP12kmem_cache_sPv+0x4c>
{
    80001e28:	fe010113          	addi	sp,sp,-32
    80001e2c:	00113c23          	sd	ra,24(sp)
    80001e30:	00813823          	sd	s0,16(sp)
    80001e34:	00913423          	sd	s1,8(sp)
    80001e38:	02010413          	addi	s0,sp,32
    80001e3c:	00058493          	mv	s1,a1
    if(cachep == nullptr || objp == nullptr)
    80001e40:	00058e63          	beqz	a1,80001e5c <_Z15kmem_cache_freeP12kmem_cache_sPv+0x38>
        return;
    slab_t* slab = findSlab(cachep, objp);
    80001e44:	00000097          	auipc	ra,0x0
    80001e48:	af4080e7          	jalr	-1292(ra) # 80001938 <_Z8findSlabP12kmem_cache_sPKv>
    if(slab == nullptr) return;
    80001e4c:	00050863          	beqz	a0,80001e5c <_Z15kmem_cache_freeP12kmem_cache_sPv+0x38>

    free_slab_object(slab, objp);
    80001e50:	00048593          	mv	a1,s1
    80001e54:	00000097          	auipc	ra,0x0
    80001e58:	c5c080e7          	jalr	-932(ra) # 80001ab0 <_Z16free_slab_objectP6slab_sPKv>
}
    80001e5c:	01813083          	ld	ra,24(sp)
    80001e60:	01013403          	ld	s0,16(sp)
    80001e64:	00813483          	ld	s1,8(sp)
    80001e68:	02010113          	addi	sp,sp,32
    80001e6c:	00008067          	ret
    80001e70:	00008067          	ret

0000000080001e74 <_Z15bigCacheKmallocP12kmem_cache_s>:
{
    80001e74:	fd010113          	addi	sp,sp,-48
    80001e78:	02113423          	sd	ra,40(sp)
    80001e7c:	02813023          	sd	s0,32(sp)
    80001e80:	00913c23          	sd	s1,24(sp)
    80001e84:	01213823          	sd	s2,16(sp)
    80001e88:	01313423          	sd	s3,8(sp)
    80001e8c:	03010413          	addi	s0,sp,48
    80001e90:	00050493          	mv	s1,a0
    if(cachep == nullptr)
    80001e94:	16050663          	beqz	a0,80002000 <_Z15bigCacheKmallocP12kmem_cache_s+0x18c>
    if(cachep->slabs_partial != nullptr)
    80001e98:	05053503          	ld	a0,80(a0)
    80001e9c:	04051a63          	bnez	a0,80001ef0 <_Z15bigCacheKmallocP12kmem_cache_s+0x7c>
    else if(cachep->slabs_empty != nullptr)
    80001ea0:	0404b503          	ld	a0,64(s1)
    80001ea4:	08050c63          	beqz	a0,80001f3c <_Z15bigCacheKmallocP12kmem_cache_s+0xc8>
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001ea8:	fffff097          	auipc	ra,0xfffff
    80001eac:	640080e7          	jalr	1600(ra) # 800014e8 <_Z14allocateObjectP6slab_s>
    80001eb0:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001eb4:	0404b503          	ld	a0,64(s1)
    80001eb8:	fffff097          	auipc	ra,0xfffff
    80001ebc:	710080e7          	jalr	1808(ra) # 800015c8 <_Z5emptyP6slab_s>
    80001ec0:	04051663          	bnez	a0,80001f0c <_Z15bigCacheKmallocP12kmem_cache_s+0x98>
            putEmptyToPartial(cachep);
    80001ec4:	00048513          	mv	a0,s1
    80001ec8:	00000097          	auipc	ra,0x0
    80001ecc:	808080e7          	jalr	-2040(ra) # 800016d0 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001ed0:	0504b503          	ld	a0,80(s1)
    80001ed4:	fffff097          	auipc	ra,0xfffff
    80001ed8:	6cc080e7          	jalr	1740(ra) # 800015a0 <_Z4fullP6slab_s>
    80001edc:	02050863          	beqz	a0,80001f0c <_Z15bigCacheKmallocP12kmem_cache_s+0x98>
                putPartialToFull(cachep);
    80001ee0:	00048513          	mv	a0,s1
    80001ee4:	fffff097          	auipc	ra,0xfffff
    80001ee8:	794080e7          	jalr	1940(ra) # 80001678 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001eec:	0200006f          	j	80001f0c <_Z15bigCacheKmallocP12kmem_cache_s+0x98>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
    80001ef0:	fffff097          	auipc	ra,0xfffff
    80001ef4:	5f8080e7          	jalr	1528(ra) # 800014e8 <_Z14allocateObjectP6slab_s>
    80001ef8:	00050913          	mv	s2,a0
        if(full(cachep->slabs_partial))
    80001efc:	0504b503          	ld	a0,80(s1)
    80001f00:	fffff097          	auipc	ra,0xfffff
    80001f04:	6a0080e7          	jalr	1696(ra) # 800015a0 <_Z4fullP6slab_s>
    80001f08:	02051263          	bnez	a0,80001f2c <_Z15bigCacheKmallocP12kmem_cache_s+0xb8>
}
    80001f0c:	00090513          	mv	a0,s2
    80001f10:	02813083          	ld	ra,40(sp)
    80001f14:	02013403          	ld	s0,32(sp)
    80001f18:	01813483          	ld	s1,24(sp)
    80001f1c:	01013903          	ld	s2,16(sp)
    80001f20:	00813983          	ld	s3,8(sp)
    80001f24:	03010113          	addi	sp,sp,48
    80001f28:	00008067          	ret
            putPartialToFull(cachep);
    80001f2c:	00048513          	mv	a0,s1
    80001f30:	fffff097          	auipc	ra,0xfffff
    80001f34:	748080e7          	jalr	1864(ra) # 80001678 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001f38:	fd5ff06f          	j	80001f0c <_Z15bigCacheKmallocP12kmem_cache_s+0x98>
        slab_t* slab = (slab_t*)kmem_cache_alloc(cacheOfSlabs);
    80001f3c:	00007517          	auipc	a0,0x7
    80001f40:	abc53503          	ld	a0,-1348(a0) # 800089f8 <_ZL12cacheOfSlabs>
    80001f44:	00000097          	auipc	ra,0x0
    80001f48:	ca0080e7          	jalr	-864(ra) # 80001be4 <_Z16kmem_cache_allocP12kmem_cache_s>
    80001f4c:	00050913          	mv	s2,a0
        if(slab == nullptr) // potencijalni EXPAND ERROR
    80001f50:	fa050ee3          	beqz	a0,80001f0c <_Z15bigCacheKmallocP12kmem_cache_s+0x98>
        slab->owner = cachep;
    80001f54:	00953823          	sd	s1,16(a0)
        slab->numOfObjects = 2;
    80001f58:	00200793          	li	a5,2
    80001f5c:	00f53c23          	sd	a5,24(a0)
        slab->numOfAllocatedObjects = 0;
    80001f60:	02053023          	sd	zero,32(a0)
        slab->allocated[0] = 0;
    80001f64:	02050823          	sb	zero,48(a0)
        void* addr = buddy_alloc(2*(cachep->obj_size / BLOCK_SIZE));
    80001f68:	0604b503          	ld	a0,96(s1)
    80001f6c:	00c55513          	srli	a0,a0,0xc
    80001f70:	00151513          	slli	a0,a0,0x1
    80001f74:	00001097          	auipc	ra,0x1
    80001f78:	014080e7          	jalr	20(ra) # 80002f88 <_Z11buddy_allocm>
    80001f7c:	00050993          	mv	s3,a0
        if(addr == nullptr)
    80001f80:	06050263          	beqz	a0,80001fe4 <_Z15bigCacheKmallocP12kmem_cache_s+0x170>
        slab->startAddr = addr;
    80001f84:	02a93423          	sd	a0,40(s2)
        insertIntoSlabList(slab, &cachep->slabs_empty);
    80001f88:	04048593          	addi	a1,s1,64
    80001f8c:	00090513          	mv	a0,s2
    80001f90:	fffff097          	auipc	ra,0xfffff
    80001f94:	658080e7          	jalr	1624(ra) # 800015e8 <_Z18insertIntoSlabListP6slab_sPS0_>
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001f98:	0404b503          	ld	a0,64(s1)
    80001f9c:	fffff097          	auipc	ra,0xfffff
    80001fa0:	54c080e7          	jalr	1356(ra) # 800014e8 <_Z14allocateObjectP6slab_s>
    80001fa4:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    80001fa8:	0404b503          	ld	a0,64(s1)
    80001fac:	fffff097          	auipc	ra,0xfffff
    80001fb0:	61c080e7          	jalr	1564(ra) # 800015c8 <_Z5emptyP6slab_s>
    80001fb4:	f4051ce3          	bnez	a0,80001f0c <_Z15bigCacheKmallocP12kmem_cache_s+0x98>
            putEmptyToPartial(cachep);
    80001fb8:	00048513          	mv	a0,s1
    80001fbc:	fffff097          	auipc	ra,0xfffff
    80001fc0:	714080e7          	jalr	1812(ra) # 800016d0 <_Z17putEmptyToPartialP12kmem_cache_s>
            if(full(cachep->slabs_partial))
    80001fc4:	0504b503          	ld	a0,80(s1)
    80001fc8:	fffff097          	auipc	ra,0xfffff
    80001fcc:	5d8080e7          	jalr	1496(ra) # 800015a0 <_Z4fullP6slab_s>
    80001fd0:	f2050ee3          	beqz	a0,80001f0c <_Z15bigCacheKmallocP12kmem_cache_s+0x98>
                putPartialToFull(cachep);
    80001fd4:	00048513          	mv	a0,s1
    80001fd8:	fffff097          	auipc	ra,0xfffff
    80001fdc:	6a0080e7          	jalr	1696(ra) # 80001678 <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    80001fe0:	f2dff06f          	j	80001f0c <_Z15bigCacheKmallocP12kmem_cache_s+0x98>
            kmem_cache_free(cacheOfSlabs, slab);
    80001fe4:	00090593          	mv	a1,s2
    80001fe8:	00007517          	auipc	a0,0x7
    80001fec:	a1053503          	ld	a0,-1520(a0) # 800089f8 <_ZL12cacheOfSlabs>
    80001ff0:	00000097          	auipc	ra,0x0
    80001ff4:	e34080e7          	jalr	-460(ra) # 80001e24 <_Z15kmem_cache_freeP12kmem_cache_sPv>
            return nullptr;
    80001ff8:	00098913          	mv	s2,s3
    80001ffc:	f11ff06f          	j	80001f0c <_Z15bigCacheKmallocP12kmem_cache_s+0x98>
        return nullptr;
    80002000:	00050913          	mv	s2,a0
    80002004:	f09ff06f          	j	80001f0c <_Z15bigCacheKmallocP12kmem_cache_s+0x98>

0000000080002008 <_Z9big_kfreeP6slab_sPKv>:
    if(slab == nullptr || objp == nullptr)
    80002008:	08050863          	beqz	a0,80002098 <_Z9big_kfreeP6slab_sPKv+0x90>
    8000200c:	08058663          	beqz	a1,80002098 <_Z9big_kfreeP6slab_sPKv+0x90>
{
    80002010:	fd010113          	addi	sp,sp,-48
    80002014:	02113423          	sd	ra,40(sp)
    80002018:	02813023          	sd	s0,32(sp)
    8000201c:	00913c23          	sd	s1,24(sp)
    80002020:	01213823          	sd	s2,16(sp)
    80002024:	01313423          	sd	s3,8(sp)
    80002028:	03010413          	addi	s0,sp,48
    kmem_cache_t* cachep = slab->owner;
    8000202c:	01053983          	ld	s3,16(a0)
    free_slab_object(slab, objp);
    80002030:	00000097          	auipc	ra,0x0
    80002034:	a80080e7          	jalr	-1408(ra) # 80001ab0 <_Z16free_slab_objectP6slab_sPKv>
    slab_t* slabE = cachep->slabs_empty;
    80002038:	0409b483          	ld	s1,64(s3)
    8000203c:	03c0006f          	j	80002078 <_Z9big_kfreeP6slab_sPKv+0x70>
        slabE = cachep->slabs_empty = slabE->next;
    80002040:	0084b903          	ld	s2,8(s1)
    80002044:	0529b023          	sd	s2,64(s3)
        buddy_free((void*)old->startAddr, 2*(cachep->obj_size / BLOCK_SIZE));
    80002048:	0609b583          	ld	a1,96(s3)
    8000204c:	00c5d593          	srli	a1,a1,0xc
    80002050:	00159593          	slli	a1,a1,0x1
    80002054:	0284b503          	ld	a0,40(s1)
    80002058:	00001097          	auipc	ra,0x1
    8000205c:	224080e7          	jalr	548(ra) # 8000327c <_Z10buddy_freePvm>
        kmem_cache_free(cacheOfSlabs, old);
    80002060:	00048593          	mv	a1,s1
    80002064:	00007517          	auipc	a0,0x7
    80002068:	99453503          	ld	a0,-1644(a0) # 800089f8 <_ZL12cacheOfSlabs>
    8000206c:	00000097          	auipc	ra,0x0
    80002070:	db8080e7          	jalr	-584(ra) # 80001e24 <_Z15kmem_cache_freeP12kmem_cache_sPv>
        slabE = cachep->slabs_empty = slabE->next;
    80002074:	00090493          	mv	s1,s2
    while(slabE != nullptr)
    80002078:	fc0494e3          	bnez	s1,80002040 <_Z9big_kfreeP6slab_sPKv+0x38>
}
    8000207c:	02813083          	ld	ra,40(sp)
    80002080:	02013403          	ld	s0,32(sp)
    80002084:	01813483          	ld	s1,24(sp)
    80002088:	01013903          	ld	s2,16(sp)
    8000208c:	00813983          	ld	s3,8(sp)
    80002090:	03010113          	addi	sp,sp,48
    80002094:	00008067          	ret
    80002098:	00008067          	ret

000000008000209c <_Z15kmem_cache_infoP12kmem_cache_s>:

//TODO what needs to be printed
void kmem_cache_info(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    8000209c:	14050c63          	beqz	a0,800021f4 <_Z15kmem_cache_infoP12kmem_cache_s+0x158>
{
    800020a0:	fe010113          	addi	sp,sp,-32
    800020a4:	00113c23          	sd	ra,24(sp)
    800020a8:	00813823          	sd	s0,16(sp)
    800020ac:	00913423          	sd	s1,8(sp)
    800020b0:	01213023          	sd	s2,0(sp)
    800020b4:	02010413          	addi	s0,sp,32
    800020b8:	00050913          	mv	s2,a0
        return;
    KConsole::trapPrintString("\n\n\n\n\n");
    800020bc:	00006517          	auipc	a0,0x6
    800020c0:	ffc50513          	addi	a0,a0,-4 # 800080b8 <CONSOLE_STATUS+0xa8>
    800020c4:	00002097          	auipc	ra,0x2
    800020c8:	864080e7          	jalr	-1948(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Kmem Cache Info-------------------------------------\n");
    800020cc:	00006517          	auipc	a0,0x6
    800020d0:	ff450513          	addi	a0,a0,-12 # 800080c0 <CONSOLE_STATUS+0xb0>
    800020d4:	00002097          	auipc	ra,0x2
    800020d8:	854080e7          	jalr	-1964(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache Name ");
    800020dc:	00006517          	auipc	a0,0x6
    800020e0:	01c50513          	addi	a0,a0,28 # 800080f8 <CONSOLE_STATUS+0xe8>
    800020e4:	00002097          	auipc	ra,0x2
    800020e8:	844080e7          	jalr	-1980(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString(cachep->cacheName); KConsole::trapPrintString("\n");
    800020ec:	00090513          	mv	a0,s2
    800020f0:	00002097          	auipc	ra,0x2
    800020f4:	838080e7          	jalr	-1992(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    800020f8:	00006517          	auipc	a0,0x6
    800020fc:	0a850513          	addi	a0,a0,168 # 800081a0 <CONSOLE_STATUS+0x190>
    80002100:	00002097          	auipc	ra,0x2
    80002104:	828080e7          	jalr	-2008(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Cache slab size in blocks ", cachep->slab_size);
    80002108:	00a00613          	li	a2,10
    8000210c:	05893583          	ld	a1,88(s2)
    80002110:	00006517          	auipc	a0,0x6
    80002114:	ff850513          	addi	a0,a0,-8 # 80008108 <CONSOLE_STATUS+0xf8>
    80002118:	00002097          	auipc	ra,0x2
    8000211c:	8e8080e7          	jalr	-1816(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Cache obj size in bytes ", cachep->obj_size);
    80002120:	00a00613          	li	a2,10
    80002124:	06093583          	ld	a1,96(s2)
    80002128:	00006517          	auipc	a0,0x6
    8000212c:	00050513          	mv	a0,a0
    80002130:	00002097          	auipc	ra,0x2
    80002134:	8d0080e7          	jalr	-1840(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    
    KConsole::trapPrintString("Slabs info-------------------\n");
    80002138:	00006517          	auipc	a0,0x6
    8000213c:	01050513          	addi	a0,a0,16 # 80008148 <CONSOLE_STATUS+0x138>
    80002140:	00001097          	auipc	ra,0x1
    80002144:	7e8080e7          	jalr	2024(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>

    KConsole::trapPrintString("Full slabs\n");
    80002148:	00006517          	auipc	a0,0x6
    8000214c:	02050513          	addi	a0,a0,32 # 80008168 <CONSOLE_STATUS+0x158>
    80002150:	00001097          	auipc	ra,0x1
    80002154:	7d8080e7          	jalr	2008(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    slab_t* slab = cachep->slabs_full;
    80002158:	04893483          	ld	s1,72(s2)
    while(slab != nullptr)
    8000215c:	00048c63          	beqz	s1,80002174 <_Z15kmem_cache_infoP12kmem_cache_s+0xd8>
    {
        printSlabInfo(slab);
    80002160:	00048513          	mv	a0,s1
    80002164:	00000097          	auipc	ra,0x0
    80002168:	8b0080e7          	jalr	-1872(ra) # 80001a14 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    8000216c:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80002170:	fedff06f          	j	8000215c <_Z15kmem_cache_infoP12kmem_cache_s+0xc0>
    }

    KConsole::trapPrintString("Partial slabs\n");
    80002174:	00006517          	auipc	a0,0x6
    80002178:	00450513          	addi	a0,a0,4 # 80008178 <CONSOLE_STATUS+0x168>
    8000217c:	00001097          	auipc	ra,0x1
    80002180:	7ac080e7          	jalr	1964(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_partial;
    80002184:	05093483          	ld	s1,80(s2)
    while(slab != nullptr)
    80002188:	00048c63          	beqz	s1,800021a0 <_Z15kmem_cache_infoP12kmem_cache_s+0x104>
    {
        printSlabInfo(slab);
    8000218c:	00048513          	mv	a0,s1
    80002190:	00000097          	auipc	ra,0x0
    80002194:	884080e7          	jalr	-1916(ra) # 80001a14 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80002198:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    8000219c:	fedff06f          	j	80002188 <_Z15kmem_cache_infoP12kmem_cache_s+0xec>
    }

    KConsole::trapPrintString("Empty slabs\n");
    800021a0:	00006517          	auipc	a0,0x6
    800021a4:	fe850513          	addi	a0,a0,-24 # 80008188 <CONSOLE_STATUS+0x178>
    800021a8:	00001097          	auipc	ra,0x1
    800021ac:	780080e7          	jalr	1920(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_empty;
    800021b0:	04093483          	ld	s1,64(s2)
    while(slab != nullptr)
    800021b4:	00048c63          	beqz	s1,800021cc <_Z15kmem_cache_infoP12kmem_cache_s+0x130>
    {
        printSlabInfo(slab);
    800021b8:	00048513          	mv	a0,s1
    800021bc:	00000097          	auipc	ra,0x0
    800021c0:	858080e7          	jalr	-1960(ra) # 80001a14 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    800021c4:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    800021c8:	fedff06f          	j	800021b4 <_Z15kmem_cache_infoP12kmem_cache_s+0x118>
    }

    KConsole::trapPrintString("\n\n\n\n\n");
    800021cc:	00006517          	auipc	a0,0x6
    800021d0:	eec50513          	addi	a0,a0,-276 # 800080b8 <CONSOLE_STATUS+0xa8>
    800021d4:	00001097          	auipc	ra,0x1
    800021d8:	754080e7          	jalr	1876(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
}
    800021dc:	01813083          	ld	ra,24(sp)
    800021e0:	01013403          	ld	s0,16(sp)
    800021e4:	00813483          	ld	s1,8(sp)
    800021e8:	00013903          	ld	s2,0(sp)
    800021ec:	02010113          	addi	sp,sp,32
    800021f0:	00008067          	ret
    800021f4:	00008067          	ret

00000000800021f8 <_Z22printSlabAllocatorInfov>:
{
    800021f8:	fe010113          	addi	sp,sp,-32
    800021fc:	00113c23          	sd	ra,24(sp)
    80002200:	00813823          	sd	s0,16(sp)
    80002204:	00913423          	sd	s1,8(sp)
    80002208:	02010413          	addi	s0,sp,32
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n\n");
    8000220c:	00006517          	auipc	a0,0x6
    80002210:	f8c50513          	addi	a0,a0,-116 # 80008198 <CONSOLE_STATUS+0x188>
    80002214:	00001097          	auipc	ra,0x1
    80002218:	714080e7          	jalr	1812(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Slab allocator info----------------------------------------------------------\n");
    8000221c:	00006517          	auipc	a0,0x6
    80002220:	f8c50513          	addi	a0,a0,-116 # 800081a8 <CONSOLE_STATUS+0x198>
    80002224:	00001097          	auipc	ra,0x1
    80002228:	704080e7          	jalr	1796(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Slab allocator address ", (size_t)slabAllocator, 16);
    8000222c:	00006497          	auipc	s1,0x6
    80002230:	7c448493          	addi	s1,s1,1988 # 800089f0 <_ZL13slabAllocator>
    80002234:	01000613          	li	a2,16
    80002238:	0004b583          	ld	a1,0(s1)
    8000223c:	00006517          	auipc	a0,0x6
    80002240:	fbc50513          	addi	a0,a0,-68 # 800081f8 <CONSOLE_STATUS+0x1e8>
    80002244:	00001097          	auipc	ra,0x1
    80002248:	7bc080e7          	jalr	1980(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintString("Cache of caches info\n");
    8000224c:	00006517          	auipc	a0,0x6
    80002250:	fc450513          	addi	a0,a0,-60 # 80008210 <CONSOLE_STATUS+0x200>
    80002254:	00001097          	auipc	ra,0x1
    80002258:	6d4080e7          	jalr	1748(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    kmem_cache_info(&slabAllocator->cacheOfCaches);
    8000225c:	0004b503          	ld	a0,0(s1)
    80002260:	06850513          	addi	a0,a0,104
    80002264:	00000097          	auipc	ra,0x0
    80002268:	e38080e7          	jalr	-456(ra) # 8000209c <_Z15kmem_cache_infoP12kmem_cache_s>
    KConsole::trapPrintString("Caches for buffers\n");
    8000226c:	00006517          	auipc	a0,0x6
    80002270:	fbc50513          	addi	a0,a0,-68 # 80008228 <CONSOLE_STATUS+0x218>
    80002274:	00001097          	auipc	ra,0x1
    80002278:	6b4080e7          	jalr	1716(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    8000227c:	00000493          	li	s1,0
    80002280:	0100006f          	j	80002290 <_Z22printSlabAllocatorInfov+0x98>
            kmem_cache_info(slabAllocator->cachesBuffers[i]);
    80002284:	00000097          	auipc	ra,0x0
    80002288:	e18080e7          	jalr	-488(ra) # 8000209c <_Z15kmem_cache_infoP12kmem_cache_s>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    8000228c:	00148493          	addi	s1,s1,1
    80002290:	00c00793          	li	a5,12
    80002294:	0297e063          	bltu	a5,s1,800022b4 <_Z22printSlabAllocatorInfov+0xbc>
        if(slabAllocator->cachesBuffers[i] != nullptr)
    80002298:	00349793          	slli	a5,s1,0x3
    8000229c:	00006717          	auipc	a4,0x6
    800022a0:	75473703          	ld	a4,1876(a4) # 800089f0 <_ZL13slabAllocator>
    800022a4:	00f707b3          	add	a5,a4,a5
    800022a8:	0007b503          	ld	a0,0(a5)
    800022ac:	fc051ce3          	bnez	a0,80002284 <_Z22printSlabAllocatorInfov+0x8c>
    800022b0:	fddff06f          	j	8000228c <_Z22printSlabAllocatorInfov+0x94>
    KConsole::trapPrintString("\n\n\n\n\n\n\n\n\n");
    800022b4:	00006517          	auipc	a0,0x6
    800022b8:	ee450513          	addi	a0,a0,-284 # 80008198 <CONSOLE_STATUS+0x188>
    800022bc:	00001097          	auipc	ra,0x1
    800022c0:	66c080e7          	jalr	1644(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    printBuddyInfo();
    800022c4:	00001097          	auipc	ra,0x1
    800022c8:	028080e7          	jalr	40(ra) # 800032ec <_Z14printBuddyInfov>
}
    800022cc:	01813083          	ld	ra,24(sp)
    800022d0:	01013403          	ld	s0,16(sp)
    800022d4:	00813483          	ld	s1,8(sp)
    800022d8:	02010113          	addi	sp,sp,32
    800022dc:	00008067          	ret

00000000800022e0 <_Z7kmallocm>:

void *kmalloc(size_t size)
{
    800022e0:	fd010113          	addi	sp,sp,-48
    800022e4:	02113423          	sd	ra,40(sp)
    800022e8:	02813023          	sd	s0,32(sp)
    800022ec:	00913c23          	sd	s1,24(sp)
    800022f0:	01213823          	sd	s2,16(sp)
    800022f4:	01313423          	sd	s3,8(sp)
    800022f8:	03010413          	addi	s0,sp,48
    size_t level = getDeg2Ceil(size);
    800022fc:	00001097          	auipc	ra,0x1
    80002300:	b18080e7          	jalr	-1256(ra) # 80002e14 <_Z11getDeg2Ceilm>
    if(level < CACHE_BUFFER_SMALL)
    80002304:	00400793          	li	a5,4
    80002308:	00a7fa63          	bgeu	a5,a0,8000231c <_Z7kmallocm+0x3c>
        level = CACHE_BUFFER_SMALL;
    if(level > CACHE_BUFFER_BIG)
    8000230c:	01100793          	li	a5,17
    80002310:	00a7f863          	bgeu	a5,a0,80002320 <_Z7kmallocm+0x40>
        return nullptr;
    80002314:	00000913          	li	s2,0
    80002318:	0540006f          	j	8000236c <_Z7kmallocm+0x8c>
        level = CACHE_BUFFER_SMALL;
    8000231c:	00500513          	li	a0,5
    size = (1 << level);
    80002320:	00100693          	li	a3,1
    80002324:	00a699bb          	sllw	s3,a3,a0
    size_t index = level - CACHE_BUFFER_SMALL;
    80002328:	ffb50493          	addi	s1,a0,-5

    static size_t border = 12;
    if(level >= border)
    8000232c:	00b00793          	li	a5,11
    80002330:	0aa7fa63          	bgeu	a5,a0,800023e4 <_Z7kmallocm+0x104>
    {
        if(slabAllocator->cachesBuffers[index] == nullptr)
    80002334:	00006917          	auipc	s2,0x6
    80002338:	6bc93903          	ld	s2,1724(s2) # 800089f0 <_ZL13slabAllocator>
    8000233c:	00349793          	slli	a5,s1,0x3
    80002340:	00f907b3          	add	a5,s2,a5
    80002344:	0007b783          	ld	a5,0(a5)
    80002348:	04078263          	beqz	a5,8000238c <_Z7kmallocm+0xac>
            if(slabAllocator->cachesBuffers[index] == nullptr)
                return nullptr;
            init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", 2*(size / BLOCK_SIZE), size, nullptr,nullptr);
        }

        return bigCacheKmalloc(slabAllocator->cachesBuffers[index]);
    8000234c:	00349493          	slli	s1,s1,0x3
    80002350:	00006797          	auipc	a5,0x6
    80002354:	6a07b783          	ld	a5,1696(a5) # 800089f0 <_ZL13slabAllocator>
    80002358:	009784b3          	add	s1,a5,s1
    8000235c:	0004b503          	ld	a0,0(s1)
    80002360:	00000097          	auipc	ra,0x0
    80002364:	b14080e7          	jalr	-1260(ra) # 80001e74 <_Z15bigCacheKmallocP12kmem_cache_s>
    80002368:	00050913          	mv	s2,a0
            return nullptr;
        init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", getOptimalSlabSize(size), size, nullptr,nullptr);
    }

    return kmem_cache_alloc(slabAllocator->cachesBuffers[index]);
}
    8000236c:	00090513          	mv	a0,s2
    80002370:	02813083          	ld	ra,40(sp)
    80002374:	02013403          	ld	s0,32(sp)
    80002378:	01813483          	ld	s1,24(sp)
    8000237c:	01013903          	ld	s2,16(sp)
    80002380:	00813983          	ld	s3,8(sp)
    80002384:	03010113          	addi	sp,sp,48
    80002388:	00008067          	ret
            slabAllocator->cachesBuffers[index] = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    8000238c:	06890513          	addi	a0,s2,104
    80002390:	00000097          	auipc	ra,0x0
    80002394:	854080e7          	jalr	-1964(ra) # 80001be4 <_Z16kmem_cache_allocP12kmem_cache_s>
    80002398:	00349713          	slli	a4,s1,0x3
    8000239c:	00e90933          	add	s2,s2,a4
    800023a0:	00a93023          	sd	a0,0(s2)
            if(slabAllocator->cachesBuffers[index] == nullptr)
    800023a4:	00006797          	auipc	a5,0x6
    800023a8:	64c7b783          	ld	a5,1612(a5) # 800089f0 <_ZL13slabAllocator>
    800023ac:	00e787b3          	add	a5,a5,a4
    800023b0:	0007b903          	ld	s2,0(a5)
    800023b4:	fa090ce3          	beqz	s2,8000236c <_Z7kmallocm+0x8c>
            init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", 2*(size / BLOCK_SIZE), size, nullptr,nullptr);
    800023b8:	00c9d613          	srli	a2,s3,0xc
    800023bc:	00000793          	li	a5,0
    800023c0:	00000713          	li	a4,0
    800023c4:	00098693          	mv	a3,s3
    800023c8:	00161613          	slli	a2,a2,0x1
    800023cc:	00006597          	auipc	a1,0x6
    800023d0:	e7458593          	addi	a1,a1,-396 # 80008240 <CONSOLE_STATUS+0x230>
    800023d4:	00090513          	mv	a0,s2
    800023d8:	fffff097          	auipc	ra,0xfffff
    800023dc:	f88080e7          	jalr	-120(ra) # 80001360 <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>
    800023e0:	f6dff06f          	j	8000234c <_Z7kmallocm+0x6c>
    if(slabAllocator->cachesBuffers[index] == nullptr)
    800023e4:	00006917          	auipc	s2,0x6
    800023e8:	60c93903          	ld	s2,1548(s2) # 800089f0 <_ZL13slabAllocator>
    800023ec:	00349793          	slli	a5,s1,0x3
    800023f0:	00f907b3          	add	a5,s2,a5
    800023f4:	0007b783          	ld	a5,0(a5)
    800023f8:	02078463          	beqz	a5,80002420 <_Z7kmallocm+0x140>
    return kmem_cache_alloc(slabAllocator->cachesBuffers[index]);
    800023fc:	00349493          	slli	s1,s1,0x3
    80002400:	00006797          	auipc	a5,0x6
    80002404:	5f07b783          	ld	a5,1520(a5) # 800089f0 <_ZL13slabAllocator>
    80002408:	009784b3          	add	s1,a5,s1
    8000240c:	0004b503          	ld	a0,0(s1)
    80002410:	fffff097          	auipc	ra,0xfffff
    80002414:	7d4080e7          	jalr	2004(ra) # 80001be4 <_Z16kmem_cache_allocP12kmem_cache_s>
    80002418:	00050913          	mv	s2,a0
    8000241c:	f51ff06f          	j	8000236c <_Z7kmallocm+0x8c>
        slabAllocator->cachesBuffers[index] = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80002420:	06890513          	addi	a0,s2,104
    80002424:	fffff097          	auipc	ra,0xfffff
    80002428:	7c0080e7          	jalr	1984(ra) # 80001be4 <_Z16kmem_cache_allocP12kmem_cache_s>
    8000242c:	00349713          	slli	a4,s1,0x3
    80002430:	00e90933          	add	s2,s2,a4
    80002434:	00a93023          	sd	a0,0(s2)
        if(slabAllocator->cachesBuffers[index] == nullptr)
    80002438:	00006797          	auipc	a5,0x6
    8000243c:	5b87b783          	ld	a5,1464(a5) # 800089f0 <_ZL13slabAllocator>
    80002440:	00e787b3          	add	a5,a5,a4
    80002444:	0007b903          	ld	s2,0(a5)
    80002448:	f20902e3          	beqz	s2,8000236c <_Z7kmallocm+0x8c>
        init_cache(slabAllocator->cachesBuffers[index], "Cache for small buffers", getOptimalSlabSize(size), size, nullptr,nullptr);
    8000244c:	00098513          	mv	a0,s3
    80002450:	fffff097          	auipc	ra,0xfffff
    80002454:	470080e7          	jalr	1136(ra) # 800018c0 <_Z18getOptimalSlabSizem>
    80002458:	00050613          	mv	a2,a0
    8000245c:	00000793          	li	a5,0
    80002460:	00000713          	li	a4,0
    80002464:	00098693          	mv	a3,s3
    80002468:	00006597          	auipc	a1,0x6
    8000246c:	dd858593          	addi	a1,a1,-552 # 80008240 <CONSOLE_STATUS+0x230>
    80002470:	00090513          	mv	a0,s2
    80002474:	fffff097          	auipc	ra,0xfffff
    80002478:	eec080e7          	jalr	-276(ra) # 80001360 <_Z10init_cacheP12kmem_cache_sPKcmmPFvPvES5_>
    8000247c:	f81ff06f          	j	800023fc <_Z7kmallocm+0x11c>

0000000080002480 <_Z5kfreePKv>:

void kfree(const void *objp)
{
    if(objp == nullptr)
    80002480:	0e050063          	beqz	a0,80002560 <_Z5kfreePKv+0xe0>
{
    80002484:	fd010113          	addi	sp,sp,-48
    80002488:	02113423          	sd	ra,40(sp)
    8000248c:	02813023          	sd	s0,32(sp)
    80002490:	00913c23          	sd	s1,24(sp)
    80002494:	01213823          	sd	s2,16(sp)
    80002498:	01313423          	sd	s3,8(sp)
    8000249c:	03010413          	addi	s0,sp,48
    800024a0:	00050993          	mv	s3,a0
        return;
    slab_t* slab = nullptr;
    int index = -1;
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    800024a4:	00000493          	li	s1,0
    slab_t* slab = nullptr;
    800024a8:	00000913          	li	s2,0
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    800024ac:	00c00793          	li	a5,12
    800024b0:	0297ee63          	bltu	a5,s1,800024ec <_Z5kfreePKv+0x6c>
    {
        slab = findSlab(slabAllocator->cachesBuffers[i], objp);
    800024b4:	00349793          	slli	a5,s1,0x3
    800024b8:	00006717          	auipc	a4,0x6
    800024bc:	53873703          	ld	a4,1336(a4) # 800089f0 <_ZL13slabAllocator>
    800024c0:	00f707b3          	add	a5,a4,a5
    800024c4:	00098593          	mv	a1,s3
    800024c8:	0007b503          	ld	a0,0(a5)
    800024cc:	fffff097          	auipc	ra,0xfffff
    800024d0:	46c080e7          	jalr	1132(ra) # 80001938 <_Z8findSlabP12kmem_cache_sPKv>
    800024d4:	00050913          	mv	s2,a0
        if(slab != nullptr)
    800024d8:	00051663          	bnez	a0,800024e4 <_Z5kfreePKv+0x64>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    800024dc:	00148493          	addi	s1,s1,1
    800024e0:	fcdff06f          	j	800024ac <_Z5kfreePKv+0x2c>
        {
            index = i;
    800024e4:	0004849b          	sext.w	s1,s1
            break;
    800024e8:	0080006f          	j	800024f0 <_Z5kfreePKv+0x70>
    int index = -1;
    800024ec:	fff00493          	li	s1,-1
        }
    }
    static size_t border = 12;
    size_t level = index + CACHE_BUFFER_SMALL;
    800024f0:	0054849b          	addiw	s1,s1,5
    if(slab != nullptr && level < border)
    800024f4:	00090663          	beqz	s2,80002500 <_Z5kfreePKv+0x80>
    800024f8:	00b00793          	li	a5,11
    800024fc:	0297f663          	bgeu	a5,s1,80002528 <_Z5kfreePKv+0xa8>
    {
        free_slab_object(slab, objp);
        destroy_slab_list(&(slab->owner->slabs_empty));
    }
    else if(slab != nullptr && level >= border)
    80002500:	00090663          	beqz	s2,8000250c <_Z5kfreePKv+0x8c>
    80002504:	00b00793          	li	a5,11
    80002508:	0497e263          	bltu	a5,s1,8000254c <_Z5kfreePKv+0xcc>
    {
        big_kfree(slab, objp);
    }
}
    8000250c:	02813083          	ld	ra,40(sp)
    80002510:	02013403          	ld	s0,32(sp)
    80002514:	01813483          	ld	s1,24(sp)
    80002518:	01013903          	ld	s2,16(sp)
    8000251c:	00813983          	ld	s3,8(sp)
    80002520:	03010113          	addi	sp,sp,48
    80002524:	00008067          	ret
        free_slab_object(slab, objp);
    80002528:	00098593          	mv	a1,s3
    8000252c:	00090513          	mv	a0,s2
    80002530:	fffff097          	auipc	ra,0xfffff
    80002534:	580080e7          	jalr	1408(ra) # 80001ab0 <_Z16free_slab_objectP6slab_sPKv>
        destroy_slab_list(&(slab->owner->slabs_empty));
    80002538:	01093503          	ld	a0,16(s2)
    8000253c:	04050513          	addi	a0,a0,64
    80002540:	fffff097          	auipc	ra,0xfffff
    80002544:	d9c080e7          	jalr	-612(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    80002548:	fc5ff06f          	j	8000250c <_Z5kfreePKv+0x8c>
        big_kfree(slab, objp);
    8000254c:	00098593          	mv	a1,s3
    80002550:	00090513          	mv	a0,s2
    80002554:	00000097          	auipc	ra,0x0
    80002558:	ab4080e7          	jalr	-1356(ra) # 80002008 <_Z9big_kfreeP6slab_sPKv>
    8000255c:	fb1ff06f          	j	8000250c <_Z5kfreePKv+0x8c>
    80002560:	00008067          	ret

0000000080002564 <_Z18kmem_cache_destroyP12kmem_cache_s>:

void kmem_cache_destroy(kmem_cache_t *cachep)
{
    80002564:	fe010113          	addi	sp,sp,-32
    80002568:	00113c23          	sd	ra,24(sp)
    8000256c:	00813823          	sd	s0,16(sp)
    80002570:	00913423          	sd	s1,8(sp)
    80002574:	02010413          	addi	s0,sp,32
    80002578:	00050493          	mv	s1,a0
    if(cachep->slabs_partial != nullptr || cachep->slabs_full != nullptr) {
    8000257c:	05053783          	ld	a5,80(a0)
    80002580:	02078263          	beqz	a5,800025a4 <_Z18kmem_cache_destroyP12kmem_cache_s+0x40>
        cachep->errors |= DESTROY_ERROR;
    80002584:	0784a783          	lw	a5,120(s1)
    80002588:	0027e793          	ori	a5,a5,2
    8000258c:	06f4ac23          	sw	a5,120(s1)
    }
    destroy_slab_list(&cachep->slabs_empty);
    destroy_slab_list(&cachep->slabs_partial);
    destroy_slab_list(&cachep->slabs_full);
    kmem_cache_free(&slabAllocator->cacheOfCaches,cachep);
}
    80002590:	01813083          	ld	ra,24(sp)
    80002594:	01013403          	ld	s0,16(sp)
    80002598:	00813483          	ld	s1,8(sp)
    8000259c:	02010113          	addi	sp,sp,32
    800025a0:	00008067          	ret
    if(cachep->slabs_partial != nullptr || cachep->slabs_full != nullptr) {
    800025a4:	04853783          	ld	a5,72(a0)
    800025a8:	fc079ee3          	bnez	a5,80002584 <_Z18kmem_cache_destroyP12kmem_cache_s+0x20>
    destroy_slab_list(&cachep->slabs_empty);
    800025ac:	04050513          	addi	a0,a0,64
    800025b0:	fffff097          	auipc	ra,0xfffff
    800025b4:	d2c080e7          	jalr	-724(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    destroy_slab_list(&cachep->slabs_partial);
    800025b8:	05048513          	addi	a0,s1,80
    800025bc:	fffff097          	auipc	ra,0xfffff
    800025c0:	d20080e7          	jalr	-736(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    destroy_slab_list(&cachep->slabs_full);
    800025c4:	04848513          	addi	a0,s1,72
    800025c8:	fffff097          	auipc	ra,0xfffff
    800025cc:	d14080e7          	jalr	-748(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    kmem_cache_free(&slabAllocator->cacheOfCaches,cachep);
    800025d0:	00048593          	mv	a1,s1
    800025d4:	00006517          	auipc	a0,0x6
    800025d8:	41c53503          	ld	a0,1052(a0) # 800089f0 <_ZL13slabAllocator>
    800025dc:	06850513          	addi	a0,a0,104
    800025e0:	00000097          	auipc	ra,0x0
    800025e4:	844080e7          	jalr	-1980(ra) # 80001e24 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    800025e8:	fa9ff06f          	j	80002590 <_Z18kmem_cache_destroyP12kmem_cache_s+0x2c>

00000000800025ec <_Z17kmem_cache_shrinkP12kmem_cache_s>:

int kmem_cache_shrink(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    800025ec:	02050863          	beqz	a0,8000261c <_Z17kmem_cache_shrinkP12kmem_cache_s+0x30>
{
    800025f0:	ff010113          	addi	sp,sp,-16
    800025f4:	00113423          	sd	ra,8(sp)
    800025f8:	00813023          	sd	s0,0(sp)
    800025fc:	01010413          	addi	s0,sp,16
        return 0;
    int totalBlocks = destroy_slab_list(&cachep->slabs_empty);
    80002600:	04050513          	addi	a0,a0,64
    80002604:	fffff097          	auipc	ra,0xfffff
    80002608:	cd8080e7          	jalr	-808(ra) # 800012dc <_Z17destroy_slab_listPP6slab_s>
    return totalBlocks;
}
    8000260c:	00813083          	ld	ra,8(sp)
    80002610:	00013403          	ld	s0,0(sp)
    80002614:	01010113          	addi	sp,sp,16
    80002618:	00008067          	ret
        return 0;
    8000261c:	00000513          	li	a0,0
}
    80002620:	00008067          	ret

0000000080002624 <_Z21shrink_caches_on_slabP6slab_s>:
{
    80002624:	fe010113          	addi	sp,sp,-32
    80002628:	00113c23          	sd	ra,24(sp)
    8000262c:	00813823          	sd	s0,16(sp)
    80002630:	00913423          	sd	s1,8(sp)
    80002634:	01213023          	sd	s2,0(sp)
    80002638:	02010413          	addi	s0,sp,32
    8000263c:	00050913          	mv	s2,a0
    for(size_t i = 0; i < slab->numOfObjects;i++)
    80002640:	00000493          	li	s1,0
    80002644:	0240006f          	j	80002668 <_Z21shrink_caches_on_slabP6slab_s+0x44>
            void* addr = (void*)((size_t)slab->startAddr + i*slab->owner->obj_size);
    80002648:	02893503          	ld	a0,40(s2)
    8000264c:	01093783          	ld	a5,16(s2)
    80002650:	0607b783          	ld	a5,96(a5)
    80002654:	029787b3          	mul	a5,a5,s1
            kmem_cache_shrink((kmem_cache_t*)addr);
    80002658:	00f50533          	add	a0,a0,a5
    8000265c:	00000097          	auipc	ra,0x0
    80002660:	f90080e7          	jalr	-112(ra) # 800025ec <_Z17kmem_cache_shrinkP12kmem_cache_s>
    for(size_t i = 0; i < slab->numOfObjects;i++)
    80002664:	00148493          	addi	s1,s1,1
    80002668:	01893783          	ld	a5,24(s2)
    8000266c:	00f4fe63          	bgeu	s1,a5,80002688 <_Z21shrink_caches_on_slabP6slab_s+0x64>
        if(checkSetIndex(slab, i))
    80002670:	0004859b          	sext.w	a1,s1
    80002674:	00090513          	mv	a0,s2
    80002678:	fffff097          	auipc	ra,0xfffff
    8000267c:	de8080e7          	jalr	-536(ra) # 80001460 <_Z13checkSetIndexP6slab_si>
    80002680:	fe0502e3          	beqz	a0,80002664 <_Z21shrink_caches_on_slabP6slab_s+0x40>
    80002684:	fc5ff06f          	j	80002648 <_Z21shrink_caches_on_slabP6slab_s+0x24>
}
    80002688:	01813083          	ld	ra,24(sp)
    8000268c:	01013403          	ld	s0,16(sp)
    80002690:	00813483          	ld	s1,8(sp)
    80002694:	00013903          	ld	s2,0(sp)
    80002698:	02010113          	addi	sp,sp,32
    8000269c:	00008067          	ret

00000000800026a0 <_Z17shrink_all_cachesv>:
{
    800026a0:	fd010113          	addi	sp,sp,-48
    800026a4:	02113423          	sd	ra,40(sp)
    800026a8:	02813023          	sd	s0,32(sp)
    800026ac:	00913c23          	sd	s1,24(sp)
    800026b0:	01213823          	sd	s2,16(sp)
    800026b4:	01313423          	sd	s3,8(sp)
    800026b8:	03010413          	addi	s0,sp,48
    kmem_cache_t* cacheOfCaches = &slabAllocator->cacheOfCaches;
    800026bc:	00006917          	auipc	s2,0x6
    800026c0:	33493903          	ld	s2,820(s2) # 800089f0 <_ZL13slabAllocator>
    800026c4:	06890993          	addi	s3,s2,104
    slab_t* slab = cacheOfCaches->slabs_full;
    800026c8:	0b093483          	ld	s1,176(s2)
    while(slab != nullptr)
    800026cc:	00048c63          	beqz	s1,800026e4 <_Z17shrink_all_cachesv+0x44>
        shrink_caches_on_slab(slab);
    800026d0:	00048513          	mv	a0,s1
    800026d4:	00000097          	auipc	ra,0x0
    800026d8:	f50080e7          	jalr	-176(ra) # 80002624 <_Z21shrink_caches_on_slabP6slab_s>
        slab = slab->next;
    800026dc:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    800026e0:	fedff06f          	j	800026cc <_Z17shrink_all_cachesv+0x2c>
    slab = cacheOfCaches->slabs_partial;
    800026e4:	0b893483          	ld	s1,184(s2)
    while(slab != nullptr)
    800026e8:	00048c63          	beqz	s1,80002700 <_Z17shrink_all_cachesv+0x60>
        shrink_caches_on_slab(slab);
    800026ec:	00048513          	mv	a0,s1
    800026f0:	00000097          	auipc	ra,0x0
    800026f4:	f34080e7          	jalr	-204(ra) # 80002624 <_Z21shrink_caches_on_slabP6slab_s>
        slab = slab->next;
    800026f8:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    800026fc:	fedff06f          	j	800026e8 <_Z17shrink_all_cachesv+0x48>
    kmem_cache_shrink(cacheOfCaches);
    80002700:	00098513          	mv	a0,s3
    80002704:	00000097          	auipc	ra,0x0
    80002708:	ee8080e7          	jalr	-280(ra) # 800025ec <_Z17kmem_cache_shrinkP12kmem_cache_s>
}
    8000270c:	02813083          	ld	ra,40(sp)
    80002710:	02013403          	ld	s0,32(sp)
    80002714:	01813483          	ld	s1,24(sp)
    80002718:	01013903          	ld	s2,16(sp)
    8000271c:	00813983          	ld	s3,8(sp)
    80002720:	03010113          	addi	sp,sp,48
    80002724:	00008067          	ret

0000000080002728 <_Z16kmem_cache_errorP12kmem_cache_s>:

int kmem_cache_error(kmem_cache_t *cachep)
{
    if(cachep == nullptr)
    80002728:	06050c63          	beqz	a0,800027a0 <_Z16kmem_cache_errorP12kmem_cache_s+0x78>
{
    8000272c:	fe010113          	addi	sp,sp,-32
    80002730:	00113c23          	sd	ra,24(sp)
    80002734:	00813823          	sd	s0,16(sp)
    80002738:	00913423          	sd	s1,8(sp)
    8000273c:	02010413          	addi	s0,sp,32
    80002740:	00050493          	mv	s1,a0
        return 0;

    if(cachep->errors & EXPAND_ERROR)
    80002744:	07852783          	lw	a5,120(a0)
    80002748:	0017f793          	andi	a5,a5,1
    8000274c:	02079663          	bnez	a5,80002778 <_Z16kmem_cache_errorP12kmem_cache_s+0x50>
        KConsole::trapPrintString("EXPAND ERROR\n");
    if(cachep->errors & DESTROY_ERROR)
    80002750:	0784a783          	lw	a5,120(s1)
    80002754:	0027f793          	andi	a5,a5,2
    80002758:	02079a63          	bnez	a5,8000278c <_Z16kmem_cache_errorP12kmem_cache_s+0x64>
        KConsole::trapPrintString("DESTROY ERROR");

    cachep->errors = NO_ERROR;
    8000275c:	0604ac23          	sw	zero,120(s1)

    return cachep->errors;
}
    80002760:	00000513          	li	a0,0
    80002764:	01813083          	ld	ra,24(sp)
    80002768:	01013403          	ld	s0,16(sp)
    8000276c:	00813483          	ld	s1,8(sp)
    80002770:	02010113          	addi	sp,sp,32
    80002774:	00008067          	ret
        KConsole::trapPrintString("EXPAND ERROR\n");
    80002778:	00006517          	auipc	a0,0x6
    8000277c:	ae050513          	addi	a0,a0,-1312 # 80008258 <CONSOLE_STATUS+0x248>
    80002780:	00001097          	auipc	ra,0x1
    80002784:	1a8080e7          	jalr	424(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    80002788:	fc9ff06f          	j	80002750 <_Z16kmem_cache_errorP12kmem_cache_s+0x28>
        KConsole::trapPrintString("DESTROY ERROR");
    8000278c:	00006517          	auipc	a0,0x6
    80002790:	adc50513          	addi	a0,a0,-1316 # 80008268 <CONSOLE_STATUS+0x258>
    80002794:	00001097          	auipc	ra,0x1
    80002798:	194080e7          	jalr	404(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    8000279c:	fc1ff06f          	j	8000275c <_Z16kmem_cache_errorP12kmem_cache_s+0x34>
}
    800027a0:	00000513          	li	a0,0
    800027a4:	00008067          	ret

00000000800027a8 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    800027a8:	ff010113          	addi	sp,sp,-16
    800027ac:	00113423          	sd	ra,8(sp)
    800027b0:	00813023          	sd	s0,0(sp)
    800027b4:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    800027b8:	00002097          	auipc	ra,0x2
    800027bc:	8e0080e7          	jalr	-1824(ra) # 80004098 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    800027c0:	00006797          	auipc	a5,0x6
    800027c4:	2407b783          	ld	a5,576(a5) # 80008a00 <_ZN3PCB7runningE>
    800027c8:	0287b703          	ld	a4,40(a5)
    800027cc:	0307b503          	ld	a0,48(a5)
    800027d0:	000700e7          	jalr	a4

    thread_exit_kernel();
    800027d4:	fffff097          	auipc	ra,0xfffff
    800027d8:	aac080e7          	jalr	-1364(ra) # 80001280 <_Z18thread_exit_kernelv>
}
    800027dc:	00813083          	ld	ra,8(sp)
    800027e0:	00013403          	ld	s0,0(sp)
    800027e4:	01010113          	addi	sp,sp,16
    800027e8:	00008067          	ret

00000000800027ec <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    800027ec:	ff010113          	addi	sp,sp,-16
    800027f0:	00813423          	sd	s0,8(sp)
    800027f4:	01010413          	addi	s0,sp,16
    })
    800027f8:	00050023          	sb	zero,0(a0)
    800027fc:	00e53c23          	sd	a4,24(a0)
    80002800:	02053023          	sd	zero,32(a0)
    80002804:	02b53423          	sd	a1,40(a0)
    80002808:	02c53823          	sd	a2,48(a0)
    8000280c:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80002810:	000017b7          	lui	a5,0x1
    80002814:	00f686b3          	add	a3,a3,a5
    })
    80002818:	04d53423          	sd	a3,72(a0)
    8000281c:	00000797          	auipc	a5,0x0
    80002820:	f8c78793          	addi	a5,a5,-116 # 800027a8 <_ZN3PCB6runnerEv>
    80002824:	04f53823          	sd	a5,80(a0)
    80002828:	04050c23          	sb	zero,88(a0)
    nextPCB = 0;
    8000282c:	00053423          	sd	zero,8(a0)
}
    80002830:	00813403          	ld	s0,8(sp)
    80002834:	01010113          	addi	sp,sp,16
    80002838:	00008067          	ret

000000008000283c <_ZN3PCB5startEv>:
{
    8000283c:	ff010113          	addi	sp,sp,-16
    80002840:	00113423          	sd	ra,8(sp)
    80002844:	00813023          	sd	s0,0(sp)
    80002848:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    8000284c:	00001097          	auipc	ra,0x1
    80002850:	394080e7          	jalr	916(ra) # 80003be0 <_ZN9Scheduler3putEP3PCB>
}
    80002854:	00813083          	ld	ra,8(sp)
    80002858:	00013403          	ld	s0,0(sp)
    8000285c:	01010113          	addi	sp,sp,16
    80002860:	00008067          	ret

0000000080002864 <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    80002864:	fe010113          	addi	sp,sp,-32
    80002868:	00113c23          	sd	ra,24(sp)
    8000286c:	00813823          	sd	s0,16(sp)
    80002870:	00913423          	sd	s1,8(sp)
    80002874:	01213023          	sd	s2,0(sp)
    80002878:	02010413          	addi	s0,sp,32
    PCB* old = running;
    8000287c:	00006497          	auipc	s1,0x6
    80002880:	1844b483          	ld	s1,388(s1) # 80008a00 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    80002884:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    80002888:	00100793          	li	a5,1
    8000288c:	04f70a63          	beq	a4,a5,800028e0 <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);

    PCB::running = Scheduler::get();
    80002890:	00001097          	auipc	ra,0x1
    80002894:	3a4080e7          	jalr	932(ra) # 80003c34 <_ZN9Scheduler3getEv>
    80002898:	00006917          	auipc	s2,0x6
    8000289c:	16890913          	addi	s2,s2,360 # 80008a00 <_ZN3PCB7runningE>
    800028a0:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    800028a4:	00100793          	li	a5,1
    800028a8:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);

    Riscv::changePrivMode();
    800028ac:	00002097          	auipc	ra,0x2
    800028b0:	da4080e7          	jalr	-604(ra) # 80004650 <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    800028b4:	00093583          	ld	a1,0(s2)
    800028b8:	04858593          	addi	a1,a1,72
    800028bc:	04848513          	addi	a0,s1,72
    800028c0:	fffff097          	auipc	ra,0xfffff
    800028c4:	958080e7          	jalr	-1704(ra) # 80001218 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800028c8:	01813083          	ld	ra,24(sp)
    800028cc:	01013403          	ld	s0,16(sp)
    800028d0:	00813483          	ld	s1,8(sp)
    800028d4:	00013903          	ld	s2,0(sp)
    800028d8:	02010113          	addi	sp,sp,32
    800028dc:	00008067          	ret
        Scheduler::put(old);
    800028e0:	00048513          	mv	a0,s1
    800028e4:	00001097          	auipc	ra,0x1
    800028e8:	2fc080e7          	jalr	764(ra) # 80003be0 <_ZN9Scheduler3putEP3PCB>
    800028ec:	fa5ff06f          	j	80002890 <_ZN3PCB8dispatchEv+0x2c>

00000000800028f0 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    800028f0:	ff010113          	addi	sp,sp,-16
    800028f4:	00113423          	sd	ra,8(sp)
    800028f8:	00813023          	sd	s0,0(sp)
    800028fc:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::pcbCache);
    80002900:	00006797          	auipc	a5,0x6
    80002904:	0887b783          	ld	a5,136(a5) # 80008988 <_GLOBAL_OFFSET_TABLE_+0xa0>
    80002908:	0007b503          	ld	a0,0(a5)
    8000290c:	fffff097          	auipc	ra,0xfffff
    80002910:	2d8080e7          	jalr	728(ra) # 80001be4 <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    80002914:	00813083          	ld	ra,8(sp)
    80002918:	00013403          	ld	s0,0(sp)
    8000291c:	01010113          	addi	sp,sp,16
    80002920:	00008067          	ret

0000000080002924 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80002924:	ff010113          	addi	sp,sp,-16
    80002928:	00113423          	sd	ra,8(sp)
    8000292c:	00813023          	sd	s0,0(sp)
    80002930:	01010413          	addi	s0,sp,16
    80002934:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::pcbCache, p);
    80002938:	00006797          	auipc	a5,0x6
    8000293c:	0507b783          	ld	a5,80(a5) # 80008988 <_GLOBAL_OFFSET_TABLE_+0xa0>
    80002940:	0007b503          	ld	a0,0(a5)
    80002944:	fffff097          	auipc	ra,0xfffff
    80002948:	4e0080e7          	jalr	1248(ra) # 80001e24 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    8000294c:	00813083          	ld	ra,8(sp)
    80002950:	00013403          	ld	s0,0(sp)
    80002954:	01010113          	addi	sp,sp,16
    80002958:	00008067          	ret

000000008000295c <_ZN3PCBD1Ev>:

PCB::~PCB()
    8000295c:	ff010113          	addi	sp,sp,-16
    80002960:	00113423          	sd	ra,8(sp)
    80002964:	00813023          	sd	s0,0(sp)
    80002968:	01010413          	addi	s0,sp,16
{
    MemoryAllocator::kfree(beginSP);
    8000296c:	03853503          	ld	a0,56(a0)
    80002970:	00002097          	auipc	ra,0x2
    80002974:	44c080e7          	jalr	1100(ra) # 80004dbc <_ZN15MemoryAllocator5kfreeEPv>
}
    80002978:	00813083          	ld	ra,8(sp)
    8000297c:	00013403          	ld	s0,0(sp)
    80002980:	01010113          	addi	sp,sp,16
    80002984:	00008067          	ret

0000000080002988 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    80002988:	fe010113          	addi	sp,sp,-32
    8000298c:	00113c23          	sd	ra,24(sp)
    80002990:	00813823          	sd	s0,16(sp)
    80002994:	00913423          	sd	s1,8(sp)
    80002998:	01213023          	sd	s2,0(sp)
    8000299c:	02010413          	addi	s0,sp,32
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    800029a0:	06000513          	li	a0,96
    800029a4:	00000097          	auipc	ra,0x0
    800029a8:	f4c080e7          	jalr	-180(ra) # 800028f0 <_ZN3PCBnwEm>
    800029ac:	00050493          	mv	s1,a0
    800029b0:	00050e63          	beqz	a0,800029cc <_ZN3PCB10initializeEv+0x44>
    800029b4:	00000713          	li	a4,0
    800029b8:	00000693          	li	a3,0
    800029bc:	00000613          	li	a2,0
    800029c0:	00000593          	li	a1,0
    800029c4:	00000097          	auipc	ra,0x0
    800029c8:	e28080e7          	jalr	-472(ra) # 800027ec <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    800029cc:	00100793          	li	a5,1
    800029d0:	00f48023          	sb	a5,0(s1)
    PCB::running = mainSystem;
    800029d4:	00006797          	auipc	a5,0x6
    800029d8:	0297b623          	sd	s1,44(a5) # 80008a00 <_ZN3PCB7runningE>
    800029dc:	00100793          	li	a5,1
    800029e0:	04f4a023          	sw	a5,64(s1)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0,
                              kmalloc(DEFAULT_STACK_SIZE),
    800029e4:	00001537          	lui	a0,0x1
    800029e8:	00000097          	auipc	ra,0x0
    800029ec:	8f8080e7          	jalr	-1800(ra) # 800022e0 <_Z7kmallocm>
    800029f0:	00050913          	mv	s2,a0
//                              MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),
                              DEFAULT_TIME_SLICE);
    800029f4:	06000513          	li	a0,96
    800029f8:	00000097          	auipc	ra,0x0
    800029fc:	ef8080e7          	jalr	-264(ra) # 800028f0 <_ZN3PCBnwEm>
    80002a00:	00050493          	mv	s1,a0
    80002a04:	02050063          	beqz	a0,80002a24 <_ZN3PCB10initializeEv+0x9c>
    80002a08:	00200713          	li	a4,2
    80002a0c:	00090693          	mv	a3,s2
    80002a10:	00000613          	li	a2,0
    80002a14:	00006597          	auipc	a1,0x6
    80002a18:	f3c5b583          	ld	a1,-196(a1) # 80008950 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002a1c:	00000097          	auipc	ra,0x0
    80002a20:	dd0080e7          	jalr	-560(ra) # 800027ec <_ZN3PCBC1EPFvPvES0_S0_m>
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0,
    80002a24:	00006797          	auipc	a5,0x6
    80002a28:	fdc78793          	addi	a5,a5,-36 # 80008a00 <_ZN3PCB7runningE>
    80002a2c:	0097b423          	sd	s1,8(a5)
    PCB::consolePCB->systemThread = true;
    80002a30:	00100713          	li	a4,1
    80002a34:	00e48023          	sb	a4,0(s1)
    PCB::consolePCB->start();
    80002a38:	0087b503          	ld	a0,8(a5)
    80002a3c:	00000097          	auipc	ra,0x0
    80002a40:	e00080e7          	jalr	-512(ra) # 8000283c <_ZN3PCB5startEv>
    PCB::userPCB = new PCB(&PCBWrapperUser::userMainWrapper, 0,
//                           kmalloc(DEFAULT_STACK_SIZE),
                           MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE),
    80002a44:	00001537          	lui	a0,0x1
    80002a48:	00002097          	auipc	ra,0x2
    80002a4c:	304080e7          	jalr	772(ra) # 80004d4c <_ZN15MemoryAllocator7kmallocEm>
    80002a50:	00050913          	mv	s2,a0
                           DEFAULT_TIME_SLICE);
    80002a54:	06000513          	li	a0,96
    80002a58:	00000097          	auipc	ra,0x0
    80002a5c:	e98080e7          	jalr	-360(ra) # 800028f0 <_ZN3PCBnwEm>
    80002a60:	00050493          	mv	s1,a0
    80002a64:	02050063          	beqz	a0,80002a84 <_ZN3PCB10initializeEv+0xfc>
    80002a68:	00200713          	li	a4,2
    80002a6c:	00090693          	mv	a3,s2
    80002a70:	00000613          	li	a2,0
    80002a74:	00006597          	auipc	a1,0x6
    80002a78:	ee45b583          	ld	a1,-284(a1) # 80008958 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002a7c:	00000097          	auipc	ra,0x0
    80002a80:	d70080e7          	jalr	-656(ra) # 800027ec <_ZN3PCBC1EPFvPvES0_S0_m>
    PCB::userPCB = new PCB(&PCBWrapperUser::userMainWrapper, 0,
    80002a84:	00006797          	auipc	a5,0x6
    80002a88:	f897b623          	sd	s1,-116(a5) # 80008a10 <_ZN3PCB7userPCBE>
    PCB::userPCB->start();
    80002a8c:	00048513          	mv	a0,s1
    80002a90:	00000097          	auipc	ra,0x0
    80002a94:	dac080e7          	jalr	-596(ra) # 8000283c <_ZN3PCB5startEv>
}
    80002a98:	01813083          	ld	ra,24(sp)
    80002a9c:	01013403          	ld	s0,16(sp)
    80002aa0:	00813483          	ld	s1,8(sp)
    80002aa4:	00013903          	ld	s2,0(sp)
    80002aa8:	02010113          	addi	sp,sp,32
    80002aac:	00008067          	ret

0000000080002ab0 <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    80002ab0:	ff010113          	addi	sp,sp,-16
    80002ab4:	00813423          	sd	s0,8(sp)
    80002ab8:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    80002abc:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    80002ac0:	ffd50513          	addi	a0,a0,-3
}
    80002ac4:	00153513          	seqz	a0,a0
    80002ac8:	00813403          	ld	s0,8(sp)
    80002acc:	01010113          	addi	sp,sp,16
    80002ad0:	00008067          	ret

0000000080002ad4 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    80002ad4:	ff010113          	addi	sp,sp,-16
    80002ad8:	00113423          	sd	ra,8(sp)
    80002adc:	00813023          	sd	s0,0(sp)
    80002ae0:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80002ae4:	00006797          	auipc	a5,0x6
    80002ae8:	f1c78793          	addi	a5,a5,-228 # 80008a00 <_ZN3PCB7runningE>
    80002aec:	0007bc23          	sd	zero,24(a5)
    PCB::running->setState(PCB::FINISHED);
    80002af0:	0007b783          	ld	a5,0(a5)
    80002af4:	00300713          	li	a4,3
    80002af8:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    80002afc:	00000097          	auipc	ra,0x0
    80002b00:	d68080e7          	jalr	-664(ra) # 80002864 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    80002b04:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002b08:	00002097          	auipc	ra,0x2
    80002b0c:	b10080e7          	jalr	-1264(ra) # 80004618 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002b10:	00813083          	ld	ra,8(sp)
    80002b14:	00013403          	ld	s0,0(sp)
    80002b18:	01010113          	addi	sp,sp,16
    80002b1c:	00008067          	ret

0000000080002b20 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    80002b20:	ff010113          	addi	sp,sp,-16
    80002b24:	00113423          	sd	ra,8(sp)
    80002b28:	00813023          	sd	s0,0(sp)
    80002b2c:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80002b30:	00006797          	auipc	a5,0x6
    80002b34:	ee07b423          	sd	zero,-280(a5) # 80008a18 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    80002b38:	00000097          	auipc	ra,0x0
    80002b3c:	d2c080e7          	jalr	-724(ra) # 80002864 <_ZN3PCB8dispatchEv>
}
    80002b40:	00813083          	ld	ra,8(sp)
    80002b44:	00013403          	ld	s0,0(sp)
    80002b48:	01010113          	addi	sp,sp,16
    80002b4c:	00008067          	ret

0000000080002b50 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002b50:	ff010113          	addi	sp,sp,-16
    80002b54:	00113423          	sd	ra,8(sp)
    80002b58:	00813023          	sd	s0,0(sp)
    80002b5c:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002b60:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    80002b64:	00006717          	auipc	a4,0x6
    80002b68:	e9c70713          	addi	a4,a4,-356 # 80008a00 <_ZN3PCB7runningE>
    80002b6c:	00073c23          	sd	zero,24(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80002b70:	00073703          	ld	a4,0(a4)
    80002b74:	00006697          	auipc	a3,0x6
    80002b78:	dd46b683          	ld	a3,-556(a3) # 80008948 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002b7c:	0006b683          	ld	a3,0(a3)
    80002b80:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002b84:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    80002b88:	00001097          	auipc	ra,0x1
    80002b8c:	edc080e7          	jalr	-292(ra) # 80003a64 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002b90:	00000097          	auipc	ra,0x0
    80002b94:	cd4080e7          	jalr	-812(ra) # 80002864 <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    80002b98:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002b9c:	00002097          	auipc	ra,0x2
    80002ba0:	a7c080e7          	jalr	-1412(ra) # 80004618 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002ba4:	00813083          	ld	ra,8(sp)
    80002ba8:	00013403          	ld	s0,0(sp)
    80002bac:	01010113          	addi	sp,sp,16
    80002bb0:	00008067          	ret

0000000080002bb4 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    80002bb4:	fd010113          	addi	sp,sp,-48
    80002bb8:	02113423          	sd	ra,40(sp)
    80002bbc:	02813023          	sd	s0,32(sp)
    80002bc0:	00913c23          	sd	s1,24(sp)
    80002bc4:	01213823          	sd	s2,16(sp)
    80002bc8:	01313423          	sd	s3,8(sp)
    80002bcc:	01413023          	sd	s4,0(sp)
    80002bd0:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002bd4:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002bd8:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002bdc:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args,
                          //stack_space,
                          (void *) PCB::savedRegA4,
                          DEFAULT_TIME_SLICE);
    80002be0:	06000513          	li	a0,96
    80002be4:	00000097          	auipc	ra,0x0
    80002be8:	d0c080e7          	jalr	-756(ra) # 800028f0 <_ZN3PCBnwEm>
    80002bec:	00050493          	mv	s1,a0
    80002bf0:	02050063          	beqz	a0,80002c10 <_ZN3PCB19threadCreateHandlerEv+0x5c>
    80002bf4:	00200713          	li	a4,2
    80002bf8:	00006697          	auipc	a3,0x6
    80002bfc:	e286b683          	ld	a3,-472(a3) # 80008a20 <_ZN3PCB10savedRegA4E>
    80002c00:	000a0613          	mv	a2,s4
    80002c04:	00098593          	mv	a1,s3
    80002c08:	00000097          	auipc	ra,0x0
    80002c0c:	be4080e7          	jalr	-1052(ra) # 800027ec <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002c10:	00993023          	sd	s1,0(s2)

    if (newPCB == nullptr) {
    80002c14:	02048e63          	beqz	s1,80002c50 <_ZN3PCB19threadCreateHandlerEv+0x9c>
        __asm__ volatile("li a0, 0x01");
    }
    else
    {
        newPCB->start();
    80002c18:	00048513          	mv	a0,s1
    80002c1c:	00000097          	auipc	ra,0x0
    80002c20:	c20080e7          	jalr	-992(ra) # 8000283c <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002c24:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80002c28:	00002097          	auipc	ra,0x2
    80002c2c:	9f0080e7          	jalr	-1552(ra) # 80004618 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002c30:	02813083          	ld	ra,40(sp)
    80002c34:	02013403          	ld	s0,32(sp)
    80002c38:	01813483          	ld	s1,24(sp)
    80002c3c:	01013903          	ld	s2,16(sp)
    80002c40:	00813983          	ld	s3,8(sp)
    80002c44:	00013a03          	ld	s4,0(sp)
    80002c48:	03010113          	addi	sp,sp,48
    80002c4c:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    80002c50:	00100513          	li	a0,1
    80002c54:	fd5ff06f          	j	80002c28 <_ZN3PCB19threadCreateHandlerEv+0x74>

0000000080002c58 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80002c58:	ff010113          	addi	sp,sp,-16
    80002c5c:	00113423          	sd	ra,8(sp)
    80002c60:	00813023          	sd	s0,0(sp)
    80002c64:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002c68:	00058513          	mv	a0,a1
    if(pcb != nullptr)
    80002c6c:	02050463          	beqz	a0,80002c94 <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80002c70:	00000097          	auipc	ra,0x0
    80002c74:	bcc080e7          	jalr	-1076(ra) # 8000283c <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002c78:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x01");
    }
    Riscv::w_a0_sscratch();
    80002c7c:	00002097          	auipc	ra,0x2
    80002c80:	99c080e7          	jalr	-1636(ra) # 80004618 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002c84:	00813083          	ld	ra,8(sp)
    80002c88:	00013403          	ld	s0,0(sp)
    80002c8c:	01010113          	addi	sp,sp,16
    80002c90:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    80002c94:	00100513          	li	a0,1
    80002c98:	fe5ff06f          	j	80002c7c <_ZN3PCB18threadStartHandlerEv+0x24>

0000000080002c9c <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    80002c9c:	fd010113          	addi	sp,sp,-48
    80002ca0:	02113423          	sd	ra,40(sp)
    80002ca4:	02813023          	sd	s0,32(sp)
    80002ca8:	00913c23          	sd	s1,24(sp)
    80002cac:	01213823          	sd	s2,16(sp)
    80002cb0:	01313423          	sd	s3,8(sp)
    80002cb4:	01413023          	sd	s4,0(sp)
    80002cb8:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    80002cbc:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    80002cc0:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    80002cc4:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args,
                          //stack_space,
                          (void *) PCB::savedRegA4,
                          DEFAULT_TIME_SLICE);
    80002cc8:	06000513          	li	a0,96
    80002ccc:	00000097          	auipc	ra,0x0
    80002cd0:	c24080e7          	jalr	-988(ra) # 800028f0 <_ZN3PCBnwEm>
    80002cd4:	00050493          	mv	s1,a0
    80002cd8:	02050063          	beqz	a0,80002cf8 <_ZN3PCB20threadMakePCBHandlerEv+0x5c>
    80002cdc:	00200713          	li	a4,2
    80002ce0:	00006697          	auipc	a3,0x6
    80002ce4:	d406b683          	ld	a3,-704(a3) # 80008a20 <_ZN3PCB10savedRegA4E>
    80002ce8:	000a0613          	mv	a2,s4
    80002cec:	00098593          	mv	a1,s3
    80002cf0:	00000097          	auipc	ra,0x0
    80002cf4:	afc080e7          	jalr	-1284(ra) # 800027ec <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002cf8:	00993023          	sd	s1,0(s2)

    if (newPCB == nullptr)
    80002cfc:	02048863          	beqz	s1,80002d2c <_ZN3PCB20threadMakePCBHandlerEv+0x90>
    {
        __asm__ volatile("li a0, 0x01");
    }
    else
        __asm__ volatile("li a0, 0");
    80002d00:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002d04:	00002097          	auipc	ra,0x2
    80002d08:	914080e7          	jalr	-1772(ra) # 80004618 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002d0c:	02813083          	ld	ra,40(sp)
    80002d10:	02013403          	ld	s0,32(sp)
    80002d14:	01813483          	ld	s1,24(sp)
    80002d18:	01013903          	ld	s2,16(sp)
    80002d1c:	00813983          	ld	s3,8(sp)
    80002d20:	00013a03          	ld	s4,0(sp)
    80002d24:	03010113          	addi	sp,sp,48
    80002d28:	00008067          	ret
        __asm__ volatile("li a0, 0x01");
    80002d2c:	00100513          	li	a0,1
    80002d30:	fd5ff06f          	j	80002d04 <_ZN3PCB20threadMakePCBHandlerEv+0x68>

0000000080002d34 <_ZN3PCB19threadDelPCBHandlerEv>:

void PCB::threadDelPCBHandler()
{
    80002d34:	fe010113          	addi	sp,sp,-32
    80002d38:	00113c23          	sd	ra,24(sp)
    80002d3c:	00813823          	sd	s0,16(sp)
    80002d40:	00913423          	sd	s1,8(sp)
    80002d44:	02010413          	addi	s0,sp,32
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002d48:	00058493          	mv	s1,a1
    if(pcb != nullptr)
    80002d4c:	02048e63          	beqz	s1,80002d88 <_ZN3PCB19threadDelPCBHandlerEv+0x54>
    {
        delete pcb;
    80002d50:	00048513          	mv	a0,s1
    80002d54:	00000097          	auipc	ra,0x0
    80002d58:	c08080e7          	jalr	-1016(ra) # 8000295c <_ZN3PCBD1Ev>
    80002d5c:	00048513          	mv	a0,s1
    80002d60:	00000097          	auipc	ra,0x0
    80002d64:	bc4080e7          	jalr	-1084(ra) # 80002924 <_ZN3PCBdlEPv>
        __asm__ volatile("li a0, 0x0");
    80002d68:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x1");
    }
    Riscv::w_a0_sscratch();
    80002d6c:	00002097          	auipc	ra,0x2
    80002d70:	8ac080e7          	jalr	-1876(ra) # 80004618 <_ZN5Riscv13w_a0_sscratchEv>
}
    80002d74:	01813083          	ld	ra,24(sp)
    80002d78:	01013403          	ld	s0,16(sp)
    80002d7c:	00813483          	ld	s1,8(sp)
    80002d80:	02010113          	addi	sp,sp,32
    80002d84:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80002d88:	00100513          	li	a0,1
    80002d8c:	fe1ff06f          	j	80002d6c <_ZN3PCB19threadDelPCBHandlerEv+0x38>

0000000080002d90 <_Z12getBlockAddrm>:
    addBlocks(addr, level); //adds free blocks
    buddy->numOfFreeBlocks += (1 << level);
}

size_t getBlockAddr(size_t addr)
{
    80002d90:	ff010113          	addi	sp,sp,-16
    80002d94:	00813423          	sd	s0,8(sp)
    80002d98:	01010413          	addi	s0,sp,16
    size_t mask = ((size_t)-1) << BLOCK_SIZE_POWER_2;
    return addr & mask;
}
    80002d9c:	fffff7b7          	lui	a5,0xfffff
    80002da0:	00f57533          	and	a0,a0,a5
    80002da4:	00813403          	ld	s0,8(sp)
    80002da8:	01010113          	addi	sp,sp,16
    80002dac:	00008067          	ret

0000000080002db0 <_Z16getNextBlockAddrm>:
size_t getNextBlockAddr(size_t addr)
{
    80002db0:	ff010113          	addi	sp,sp,-16
    80002db4:	00113423          	sd	ra,8(sp)
    80002db8:	00813023          	sd	s0,0(sp)
    80002dbc:	01010413          	addi	s0,sp,16
    size_t currBlock = getBlockAddr(addr);
    80002dc0:	00000097          	auipc	ra,0x0
    80002dc4:	fd0080e7          	jalr	-48(ra) # 80002d90 <_Z12getBlockAddrm>
    return currBlock + BLOCK_SIZE;
}
    80002dc8:	000017b7          	lui	a5,0x1
    80002dcc:	00f50533          	add	a0,a0,a5
    80002dd0:	00813083          	ld	ra,8(sp)
    80002dd4:	00013403          	ld	s0,0(sp)
    80002dd8:	01010113          	addi	sp,sp,16
    80002ddc:	00008067          	ret

0000000080002de0 <_Z12getDeg2Floorm>:

size_t getDeg2Floor(size_t num)
{
    80002de0:	ff010113          	addi	sp,sp,-16
    80002de4:	00813423          	sd	s0,8(sp)
    80002de8:	01010413          	addi	s0,sp,16
    size_t x = 1;
    size_t deg = 0;
    80002dec:	00000713          	li	a4,0
    size_t x = 1;
    80002df0:	00100793          	li	a5,1
    while(x <= num)
    80002df4:	00f56863          	bltu	a0,a5,80002e04 <_Z12getDeg2Floorm+0x24>
    {
        deg++;
    80002df8:	00170713          	addi	a4,a4,1
        x<<=1;
    80002dfc:	00179793          	slli	a5,a5,0x1
    while(x <= num)
    80002e00:	ff5ff06f          	j	80002df4 <_Z12getDeg2Floorm+0x14>
    }
    return deg - 1;
}
    80002e04:	fff70513          	addi	a0,a4,-1
    80002e08:	00813403          	ld	s0,8(sp)
    80002e0c:	01010113          	addi	sp,sp,16
    80002e10:	00008067          	ret

0000000080002e14 <_Z11getDeg2Ceilm>:

size_t getDeg2Ceil(size_t num)
{
    80002e14:	ff010113          	addi	sp,sp,-16
    80002e18:	00813423          	sd	s0,8(sp)
    80002e1c:	01010413          	addi	s0,sp,16
    80002e20:	00050713          	mv	a4,a0
    size_t x = 1;
    size_t deg = 0;
    80002e24:	00000513          	li	a0,0
    size_t x = 1;
    80002e28:	00100793          	li	a5,1
    while(x < num)
    80002e2c:	00e7f863          	bgeu	a5,a4,80002e3c <_Z11getDeg2Ceilm+0x28>
    {
        deg++;
    80002e30:	00150513          	addi	a0,a0,1
        x<<=1;
    80002e34:	00179793          	slli	a5,a5,0x1
    while(x < num)
    80002e38:	ff5ff06f          	j	80002e2c <_Z11getDeg2Ceilm+0x18>
    }
    return deg;
}
    80002e3c:	00813403          	ld	s0,8(sp)
    80002e40:	01010113          	addi	sp,sp,16
    80002e44:	00008067          	ret

0000000080002e48 <_Z15addBlockToLevelPvm>:
    addBlockToLevel(addr, level);
}

//adds free block to level
void addBlockToLevel(void* addr, size_t level)
{
    80002e48:	ff010113          	addi	sp,sp,-16
    80002e4c:	00813423          	sd	s0,8(sp)
    80002e50:	01010413          	addi	s0,sp,16
    buddyBlock* newBlock = (buddyBlock*)addr;
    newBlock->next = nullptr;
    80002e54:	00053023          	sd	zero,0(a0)
    if(buddy->bucket[level].first == nullptr)
    80002e58:	00006717          	auipc	a4,0x6
    80002e5c:	bd073703          	ld	a4,-1072(a4) # 80008a28 <_ZL5buddy>
    80002e60:	00258793          	addi	a5,a1,2
    80002e64:	00479793          	slli	a5,a5,0x4
    80002e68:	00f707b3          	add	a5,a4,a5
    80002e6c:	0007b783          	ld	a5,0(a5) # 1000 <_entry-0x7ffff000>
    80002e70:	02078463          	beqz	a5,80002e98 <_Z15addBlockToLevelPvm+0x50>
    {
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    }
    else
    {
        buddy->bucket[level].last->next = newBlock;
    80002e74:	00258593          	addi	a1,a1,2
    80002e78:	00459593          	slli	a1,a1,0x4
    80002e7c:	00b705b3          	add	a1,a4,a1
    80002e80:	0085b783          	ld	a5,8(a1)
    80002e84:	00a7b023          	sd	a0,0(a5)
        buddy->bucket[level].last = newBlock;
    80002e88:	00a5b423          	sd	a0,8(a1)
    }
}
    80002e8c:	00813403          	ld	s0,8(sp)
    80002e90:	01010113          	addi	sp,sp,16
    80002e94:	00008067          	ret
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    80002e98:	00258593          	addi	a1,a1,2
    80002e9c:	00459793          	slli	a5,a1,0x4
    80002ea0:	00f707b3          	add	a5,a4,a5
    80002ea4:	00a7b423          	sd	a0,8(a5)
    80002ea8:	00a7b023          	sd	a0,0(a5)
    80002eac:	fe1ff06f          	j	80002e8c <_Z15addBlockToLevelPvm+0x44>

0000000080002eb0 <_Z17getBuddyBlockAddrPvm>:

size_t getBuddyBlockAddr(void* addr, size_t level)
{
    80002eb0:	ff010113          	addi	sp,sp,-16
    80002eb4:	00813423          	sd	s0,8(sp)
    80002eb8:	01010413          	addi	s0,sp,16
    size_t diff = BLOCK_SIZE << level;
    80002ebc:	000017b7          	lui	a5,0x1
    80002ec0:	00b795bb          	sllw	a1,a5,a1
    size_t off = (size_t)addr - (size_t)buddy->startAddr;
    80002ec4:	00006797          	auipc	a5,0x6
    80002ec8:	b647b783          	ld	a5,-1180(a5) # 80008a28 <_ZL5buddy>
    80002ecc:	0087b783          	ld	a5,8(a5)
    80002ed0:	40f507b3          	sub	a5,a0,a5
    if(diff & off)
    80002ed4:	00f5f7b3          	and	a5,a1,a5
    80002ed8:	00078a63          	beqz	a5,80002eec <_Z17getBuddyBlockAddrPvm+0x3c>
        return (size_t)addr - diff;
    80002edc:	40b50533          	sub	a0,a0,a1
    else
        return (size_t)addr + diff;
}
    80002ee0:	00813403          	ld	s0,8(sp)
    80002ee4:	01010113          	addi	sp,sp,16
    80002ee8:	00008067          	ret
        return (size_t)addr + diff;
    80002eec:	00b50533          	add	a0,a0,a1
    80002ef0:	ff1ff06f          	j	80002ee0 <_Z17getBuddyBlockAddrPvm+0x30>

0000000080002ef4 <_Z5splitPvmmb>:
{
    80002ef4:	fd010113          	addi	sp,sp,-48
    80002ef8:	02113423          	sd	ra,40(sp)
    80002efc:	02813023          	sd	s0,32(sp)
    80002f00:	00913c23          	sd	s1,24(sp)
    80002f04:	01213823          	sd	s2,16(sp)
    80002f08:	01313423          	sd	s3,8(sp)
    80002f0c:	03010413          	addi	s0,sp,48
    80002f10:	00050993          	mv	s3,a0
    if(!splitMore)
    80002f14:	06068263          	beqz	a3,80002f78 <_Z5splitPvmmb+0x84>
    80002f18:	00058913          	mv	s2,a1
        if(currLevel == finalLevel)
    80002f1c:	04b60063          	beq	a2,a1,80002f5c <_Z5splitPvmmb+0x68>
        size_t buddyBlock = getBuddyBlockAddr(addr, currLevel - 1); // currLevel - 1 for next step
    80002f20:	fff60493          	addi	s1,a2,-1
    80002f24:	00048593          	mv	a1,s1
    80002f28:	00000097          	auipc	ra,0x0
    80002f2c:	f88080e7          	jalr	-120(ra) # 80002eb0 <_Z17getBuddyBlockAddrPvm>
        split((void*)buddyBlock, finalLevel, currLevel - 1, false); // continue splitting
    80002f30:	00000693          	li	a3,0
    80002f34:	00048613          	mv	a2,s1
    80002f38:	00090593          	mv	a1,s2
    80002f3c:	00000097          	auipc	ra,0x0
    80002f40:	fb8080e7          	jalr	-72(ra) # 80002ef4 <_Z5splitPvmmb>
        split(addr, finalLevel, currLevel - 1, true); // continue splitting
    80002f44:	00100693          	li	a3,1
    80002f48:	00048613          	mv	a2,s1
    80002f4c:	00090593          	mv	a1,s2
    80002f50:	00098513          	mv	a0,s3
    80002f54:	00000097          	auipc	ra,0x0
    80002f58:	fa0080e7          	jalr	-96(ra) # 80002ef4 <_Z5splitPvmmb>
}
    80002f5c:	02813083          	ld	ra,40(sp)
    80002f60:	02013403          	ld	s0,32(sp)
    80002f64:	01813483          	ld	s1,24(sp)
    80002f68:	01013903          	ld	s2,16(sp)
    80002f6c:	00813983          	ld	s3,8(sp)
    80002f70:	03010113          	addi	sp,sp,48
    80002f74:	00008067          	ret
        addBlockToLevel(addr, currLevel);
    80002f78:	00060593          	mv	a1,a2
    80002f7c:	00000097          	auipc	ra,0x0
    80002f80:	ecc080e7          	jalr	-308(ra) # 80002e48 <_Z15addBlockToLevelPvm>
    80002f84:	fd9ff06f          	j	80002f5c <_Z5splitPvmmb+0x68>

0000000080002f88 <_Z11buddy_allocm>:
{
    80002f88:	fe010113          	addi	sp,sp,-32
    80002f8c:	00113c23          	sd	ra,24(sp)
    80002f90:	00813823          	sd	s0,16(sp)
    80002f94:	00913423          	sd	s1,8(sp)
    80002f98:	01213023          	sd	s2,0(sp)
    80002f9c:	02010413          	addi	s0,sp,32
    size_t level = getDeg2Ceil(numOfBlocks);
    80002fa0:	00000097          	auipc	ra,0x0
    80002fa4:	e74080e7          	jalr	-396(ra) # 80002e14 <_Z11getDeg2Ceilm>
    80002fa8:	00050913          	mv	s2,a0
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002fac:	00050613          	mv	a2,a0
    80002fb0:	00006717          	auipc	a4,0x6
    80002fb4:	a7873703          	ld	a4,-1416(a4) # 80008a28 <_ZL5buddy>
    80002fb8:	01873783          	ld	a5,24(a4)
    80002fbc:	08c7e063          	bltu	a5,a2,8000303c <_Z11buddy_allocm+0xb4>
        if(buddy->bucket[i].first != nullptr)
    80002fc0:	00260793          	addi	a5,a2,2
    80002fc4:	00479793          	slli	a5,a5,0x4
    80002fc8:	00f707b3          	add	a5,a4,a5
    80002fcc:	0007b483          	ld	s1,0(a5)
    80002fd0:	00049663          	bnez	s1,80002fdc <_Z11buddy_allocm+0x54>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002fd4:	00160613          	addi	a2,a2,1
    80002fd8:	fd9ff06f          	j	80002fb0 <_Z11buddy_allocm+0x28>
            buddy->bucket[i].first = ret->next;
    80002fdc:	0004b683          	ld	a3,0(s1)
    80002fe0:	00260793          	addi	a5,a2,2
    80002fe4:	00479793          	slli	a5,a5,0x4
    80002fe8:	00f707b3          	add	a5,a4,a5
    80002fec:	00d7b023          	sd	a3,0(a5)
            if(buddy->bucket[i].first == nullptr)
    80002ff0:	02068c63          	beqz	a3,80003028 <_Z11buddy_allocm+0xa0>
            split((void*)ret, level, i, true);
    80002ff4:	00100693          	li	a3,1
    80002ff8:	00090593          	mv	a1,s2
    80002ffc:	00048513          	mv	a0,s1
    80003000:	00000097          	auipc	ra,0x0
    80003004:	ef4080e7          	jalr	-268(ra) # 80002ef4 <_Z5splitPvmmb>
            buddy->numOfFreeBlocks-= (1 << level);
    80003008:	00006797          	auipc	a5,0x6
    8000300c:	a207b783          	ld	a5,-1504(a5) # 80008a28 <_ZL5buddy>
    80003010:	00100513          	li	a0,1
    80003014:	0125153b          	sllw	a0,a0,s2
    80003018:	0107b903          	ld	s2,16(a5)
    8000301c:	40a90933          	sub	s2,s2,a0
    80003020:	0127b823          	sd	s2,16(a5)
            return ret;
    80003024:	01c0006f          	j	80003040 <_Z11buddy_allocm+0xb8>
                buddy->bucket[i].last = nullptr;
    80003028:	00260793          	addi	a5,a2,2
    8000302c:	00479793          	slli	a5,a5,0x4
    80003030:	00f70733          	add	a4,a4,a5
    80003034:	00073423          	sd	zero,8(a4)
    80003038:	fbdff06f          	j	80002ff4 <_Z11buddy_allocm+0x6c>
    return nullptr;
    8000303c:	00000493          	li	s1,0
}
    80003040:	00048513          	mv	a0,s1
    80003044:	01813083          	ld	ra,24(sp)
    80003048:	01013403          	ld	s0,16(sp)
    8000304c:	00813483          	ld	s1,8(sp)
    80003050:	00013903          	ld	s2,0(sp)
    80003054:	02010113          	addi	sp,sp,32
    80003058:	00008067          	ret

000000008000305c <_Z9addBlocksPvm>:
{
    8000305c:	fd010113          	addi	sp,sp,-48
    80003060:	02113423          	sd	ra,40(sp)
    80003064:	02813023          	sd	s0,32(sp)
    80003068:	00913c23          	sd	s1,24(sp)
    8000306c:	01213823          	sd	s2,16(sp)
    80003070:	01313423          	sd	s3,8(sp)
    80003074:	03010413          	addi	s0,sp,48
    80003078:	00050913          	mv	s2,a0
    8000307c:	00058493          	mv	s1,a1
    if(level == buddy->maxLevel)
    80003080:	00006997          	auipc	s3,0x6
    80003084:	9a89b983          	ld	s3,-1624(s3) # 80008a28 <_ZL5buddy>
    80003088:	0189b783          	ld	a5,24(s3)
    8000308c:	02b78a63          	beq	a5,a1,800030c0 <_Z9addBlocksPvm+0x64>
    size_t buddyBlockAddr = getBuddyBlockAddr(addr,level);
    80003090:	00000097          	auipc	ra,0x0
    80003094:	e20080e7          	jalr	-480(ra) # 80002eb0 <_Z17getBuddyBlockAddrPvm>
    buddyBlock* curr = buddy->bucket[level].first;
    80003098:	00248793          	addi	a5,s1,2
    8000309c:	00479793          	slli	a5,a5,0x4
    800030a0:	00f987b3          	add	a5,s3,a5
    800030a4:	0007b783          	ld	a5,0(a5)
    buddyBlock* prev = nullptr;
    800030a8:	00000713          	li	a4,0
    while(curr != nullptr)
    800030ac:	0a078863          	beqz	a5,8000315c <_Z9addBlocksPvm+0x100>
        if((size_t)curr == buddyBlockAddr)
    800030b0:	00a78e63          	beq	a5,a0,800030cc <_Z9addBlocksPvm+0x70>
        prev = curr;
    800030b4:	00078713          	mv	a4,a5
        curr = curr->next;
    800030b8:	0007b783          	ld	a5,0(a5)
    while(curr != nullptr)
    800030bc:	ff1ff06f          	j	800030ac <_Z9addBlocksPvm+0x50>
        addBlockToLevel(addr, level);
    800030c0:	00000097          	auipc	ra,0x0
    800030c4:	d88080e7          	jalr	-632(ra) # 80002e48 <_Z15addBlockToLevelPvm>
        return;
    800030c8:	0a40006f          	j	8000316c <_Z9addBlocksPvm+0x110>
            if(prev != nullptr)
    800030cc:	04070663          	beqz	a4,80003118 <_Z9addBlocksPvm+0xbc>
                prev->next = curr->next;
    800030d0:	0007b683          	ld	a3,0(a5)
    800030d4:	00d73023          	sd	a3,0(a4)
                if(curr == buddy->bucket[level].last)
    800030d8:	00248693          	addi	a3,s1,2
    800030dc:	00469693          	slli	a3,a3,0x4
    800030e0:	00d986b3          	add	a3,s3,a3
    800030e4:	0086b683          	ld	a3,8(a3)
    800030e8:	00f68e63          	beq	a3,a5,80003104 <_Z9addBlocksPvm+0xa8>
            if((size_t)addr < buddyBlockAddr) addBlocks(addr, level + 1); //merge two chunks
    800030ec:	06a97063          	bgeu	s2,a0,8000314c <_Z9addBlocksPvm+0xf0>
    800030f0:	00148593          	addi	a1,s1,1
    800030f4:	00090513          	mv	a0,s2
    800030f8:	00000097          	auipc	ra,0x0
    800030fc:	f64080e7          	jalr	-156(ra) # 8000305c <_Z9addBlocksPvm>
    80003100:	06c0006f          	j	8000316c <_Z9addBlocksPvm+0x110>
                    buddy->bucket[level].last = prev;
    80003104:	00248793          	addi	a5,s1,2
    80003108:	00479793          	slli	a5,a5,0x4
    8000310c:	00f989b3          	add	s3,s3,a5
    80003110:	00e9b423          	sd	a4,8(s3)
    80003114:	fd9ff06f          	j	800030ec <_Z9addBlocksPvm+0x90>
                if(curr->next == nullptr)
    80003118:	0007b783          	ld	a5,0(a5)
    8000311c:	00078c63          	beqz	a5,80003134 <_Z9addBlocksPvm+0xd8>
                    buddy->bucket[level].first = curr->next;
    80003120:	00248713          	addi	a4,s1,2
    80003124:	00471713          	slli	a4,a4,0x4
    80003128:	00e989b3          	add	s3,s3,a4
    8000312c:	00f9b023          	sd	a5,0(s3)
    80003130:	fbdff06f          	j	800030ec <_Z9addBlocksPvm+0x90>
                    buddy->bucket[level].first = buddy->bucket[level].last = nullptr;
    80003134:	00248793          	addi	a5,s1,2
    80003138:	00479793          	slli	a5,a5,0x4
    8000313c:	00f989b3          	add	s3,s3,a5
    80003140:	0009b423          	sd	zero,8(s3)
    80003144:	0009b023          	sd	zero,0(s3)
    80003148:	fa5ff06f          	j	800030ec <_Z9addBlocksPvm+0x90>
            else addBlocks((void*)buddyBlockAddr, level + 1); //merge two chunks
    8000314c:	00148593          	addi	a1,s1,1
    80003150:	00000097          	auipc	ra,0x0
    80003154:	f0c080e7          	jalr	-244(ra) # 8000305c <_Z9addBlocksPvm>
            return;
    80003158:	0140006f          	j	8000316c <_Z9addBlocksPvm+0x110>
    addBlockToLevel(addr, level);
    8000315c:	00048593          	mv	a1,s1
    80003160:	00090513          	mv	a0,s2
    80003164:	00000097          	auipc	ra,0x0
    80003168:	ce4080e7          	jalr	-796(ra) # 80002e48 <_Z15addBlockToLevelPvm>
}
    8000316c:	02813083          	ld	ra,40(sp)
    80003170:	02013403          	ld	s0,32(sp)
    80003174:	01813483          	ld	s1,24(sp)
    80003178:	01013903          	ld	s2,16(sp)
    8000317c:	00813983          	ld	s3,8(sp)
    80003180:	03010113          	addi	sp,sp,48
    80003184:	00008067          	ret

0000000080003188 <_Z10buddy_initPvm>:
{
    80003188:	fd010113          	addi	sp,sp,-48
    8000318c:	02113423          	sd	ra,40(sp)
    80003190:	02813023          	sd	s0,32(sp)
    80003194:	00913c23          	sd	s1,24(sp)
    80003198:	01213823          	sd	s2,16(sp)
    8000319c:	01313423          	sd	s3,8(sp)
    800031a0:	03010413          	addi	s0,sp,48
    800031a4:	00058913          	mv	s2,a1
    size_t blockAddr = getBlockAddr((size_t)addr); //alling the address
    800031a8:	00050993          	mv	s3,a0
    800031ac:	00000097          	auipc	ra,0x0
    800031b0:	be4080e7          	jalr	-1052(ra) # 80002d90 <_Z12getBlockAddrm>
    if((size_t)addr != blockAddr) // if start address not aligned
    800031b4:	00a98a63          	beq	s3,a0,800031c8 <_Z10buddy_initPvm+0x40>
        buddyAddr = getNextBlockAddr(blockAddr);
    800031b8:	00000097          	auipc	ra,0x0
    800031bc:	bf8080e7          	jalr	-1032(ra) # 80002db0 <_Z16getNextBlockAddrm>
    800031c0:	00050993          	mv	s3,a0
        numOfBlocks--; //have to discard one block
    800031c4:	fff90913          	addi	s2,s2,-1
    numOfBlocks--; // take one block for buddy metadata
    800031c8:	fff90913          	addi	s2,s2,-1
    buddy = (buddyAllocator*)buddyAddr;
    800031cc:	00098493          	mv	s1,s3
    800031d0:	00006797          	auipc	a5,0x6
    800031d4:	8537bc23          	sd	s3,-1960(a5) # 80008a28 <_ZL5buddy>
    buddy->startAddr = (void*)getNextBlockAddr(buddyAddr);
    800031d8:	00098513          	mv	a0,s3
    800031dc:	00000097          	auipc	ra,0x0
    800031e0:	bd4080e7          	jalr	-1068(ra) # 80002db0 <_Z16getNextBlockAddrm>
    800031e4:	00a9b423          	sd	a0,8(s3)
    buddy->numOfBlocks = numOfBlocks;
    800031e8:	0129b023          	sd	s2,0(s3)
    buddy->numOfFreeBlocks = numOfBlocks;
    800031ec:	0129b823          	sd	s2,16(s3)
    buddy->maxLevel = getDeg2Floor(numOfBlocks);
    800031f0:	00090513          	mv	a0,s2
    800031f4:	00000097          	auipc	ra,0x0
    800031f8:	bec080e7          	jalr	-1044(ra) # 80002de0 <_Z12getDeg2Floorm>
    800031fc:	00a9bc23          	sd	a0,24(s3)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80003200:	00000713          	li	a4,0
    80003204:	0184b783          	ld	a5,24(s1)
    80003208:	02e7e063          	bltu	a5,a4,80003228 <_Z10buddy_initPvm+0xa0>
        buddy->bucket[i].first = buddy->bucket[i].last = nullptr;
    8000320c:	00270793          	addi	a5,a4,2
    80003210:	00479793          	slli	a5,a5,0x4
    80003214:	00f487b3          	add	a5,s1,a5
    80003218:	0007b423          	sd	zero,8(a5)
    8000321c:	0007b023          	sd	zero,0(a5)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80003220:	00170713          	addi	a4,a4,1
    80003224:	fe1ff06f          	j	80003204 <_Z10buddy_initPvm+0x7c>
    for(size_t i = 0;i < numOfBlocks;i++)
    80003228:	00000493          	li	s1,0
    8000322c:	0324f663          	bgeu	s1,s2,80003258 <_Z10buddy_initPvm+0xd0>
        addBlocks((block*)buddy->startAddr + i, 0);
    80003230:	00005797          	auipc	a5,0x5
    80003234:	7f87b783          	ld	a5,2040(a5) # 80008a28 <_ZL5buddy>
    80003238:	0087b503          	ld	a0,8(a5)
    8000323c:	00c49793          	slli	a5,s1,0xc
    80003240:	00000593          	li	a1,0
    80003244:	00f50533          	add	a0,a0,a5
    80003248:	00000097          	auipc	ra,0x0
    8000324c:	e14080e7          	jalr	-492(ra) # 8000305c <_Z9addBlocksPvm>
    for(size_t i = 0;i < numOfBlocks;i++)
    80003250:	00148493          	addi	s1,s1,1
    80003254:	fd9ff06f          	j	8000322c <_Z10buddy_initPvm+0xa4>
}
    80003258:	00005517          	auipc	a0,0x5
    8000325c:	7d053503          	ld	a0,2000(a0) # 80008a28 <_ZL5buddy>
    80003260:	02813083          	ld	ra,40(sp)
    80003264:	02013403          	ld	s0,32(sp)
    80003268:	01813483          	ld	s1,24(sp)
    8000326c:	01013903          	ld	s2,16(sp)
    80003270:	00813983          	ld	s3,8(sp)
    80003274:	03010113          	addi	sp,sp,48
    80003278:	00008067          	ret

000000008000327c <_Z10buddy_freePvm>:
{
    8000327c:	fe010113          	addi	sp,sp,-32
    80003280:	00113c23          	sd	ra,24(sp)
    80003284:	00813823          	sd	s0,16(sp)
    80003288:	00913423          	sd	s1,8(sp)
    8000328c:	01213023          	sd	s2,0(sp)
    80003290:	02010413          	addi	s0,sp,32
    80003294:	00050913          	mv	s2,a0
    size_t level = getDeg2Ceil(numOfBlocks);
    80003298:	00058513          	mv	a0,a1
    8000329c:	00000097          	auipc	ra,0x0
    800032a0:	b78080e7          	jalr	-1160(ra) # 80002e14 <_Z11getDeg2Ceilm>
    800032a4:	00050493          	mv	s1,a0
    addBlocks(addr, level); //adds free blocks
    800032a8:	00050593          	mv	a1,a0
    800032ac:	00090513          	mv	a0,s2
    800032b0:	00000097          	auipc	ra,0x0
    800032b4:	dac080e7          	jalr	-596(ra) # 8000305c <_Z9addBlocksPvm>
    buddy->numOfFreeBlocks += (1 << level);
    800032b8:	00005797          	auipc	a5,0x5
    800032bc:	7707b783          	ld	a5,1904(a5) # 80008a28 <_ZL5buddy>
    800032c0:	00100513          	li	a0,1
    800032c4:	0095153b          	sllw	a0,a0,s1
    800032c8:	0107b483          	ld	s1,16(a5)
    800032cc:	00a484b3          	add	s1,s1,a0
    800032d0:	0097b823          	sd	s1,16(a5)
}
    800032d4:	01813083          	ld	ra,24(sp)
    800032d8:	01013403          	ld	s0,16(sp)
    800032dc:	00813483          	ld	s1,8(sp)
    800032e0:	00013903          	ld	s2,0(sp)
    800032e4:	02010113          	addi	sp,sp,32
    800032e8:	00008067          	ret

00000000800032ec <_Z14printBuddyInfov>:

void printBuddyInfo()
{
    800032ec:	fe010113          	addi	sp,sp,-32
    800032f0:	00113c23          	sd	ra,24(sp)
    800032f4:	00813823          	sd	s0,16(sp)
    800032f8:	00913423          	sd	s1,8(sp)
    800032fc:	01213023          	sd	s2,0(sp)
    80003300:	02010413          	addi	s0,sp,32
    KConsole::trapPrintString("Buddy info-------------------------------------------\n");
    80003304:	00005517          	auipc	a0,0x5
    80003308:	f7450513          	addi	a0,a0,-140 # 80008278 <CONSOLE_STATUS+0x268>
    8000330c:	00000097          	auipc	ra,0x0
    80003310:	61c080e7          	jalr	1564(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintStringInt("Buddy starting address ", (size_t)buddy->startAddr, 16);
    80003314:	00005497          	auipc	s1,0x5
    80003318:	71448493          	addi	s1,s1,1812 # 80008a28 <_ZL5buddy>
    8000331c:	0004b783          	ld	a5,0(s1)
    80003320:	01000613          	li	a2,16
    80003324:	0087b583          	ld	a1,8(a5)
    80003328:	00005517          	auipc	a0,0x5
    8000332c:	f8850513          	addi	a0,a0,-120 # 800082b0 <CONSOLE_STATUS+0x2a0>
    80003330:	00000097          	auipc	ra,0x0
    80003334:	6d0080e7          	jalr	1744(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Buddy number of blocks ", buddy->numOfBlocks);
    80003338:	0004b783          	ld	a5,0(s1)
    8000333c:	00a00613          	li	a2,10
    80003340:	0007b583          	ld	a1,0(a5)
    80003344:	00005517          	auipc	a0,0x5
    80003348:	f8450513          	addi	a0,a0,-124 # 800082c8 <CONSOLE_STATUS+0x2b8>
    8000334c:	00000097          	auipc	ra,0x0
    80003350:	6b4080e7          	jalr	1716(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    KConsole::trapPrintStringInt("Buddy number of free blocks ", buddy->numOfFreeBlocks);
    80003354:	0004b783          	ld	a5,0(s1)
    80003358:	00a00613          	li	a2,10
    8000335c:	0107b583          	ld	a1,16(a5)
    80003360:	00005517          	auipc	a0,0x5
    80003364:	f8050513          	addi	a0,a0,-128 # 800082e0 <CONSOLE_STATUS+0x2d0>
    80003368:	00000097          	auipc	ra,0x0
    8000336c:	698080e7          	jalr	1688(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    for(int i = buddy->maxLevel;i>=0;i--)
    80003370:	0004b783          	ld	a5,0(s1)
    80003374:	0187a903          	lw	s2,24(a5)
    80003378:	0080006f          	j	80003380 <_Z14printBuddyInfov+0x94>
    8000337c:	fff9091b          	addiw	s2,s2,-1
    80003380:	06094a63          	bltz	s2,800033f4 <_Z14printBuddyInfov+0x108>
    {
        KConsole::trapPrintStringInt("Level ",i);
    80003384:	00a00613          	li	a2,10
    80003388:	00090593          	mv	a1,s2
    8000338c:	00005517          	auipc	a0,0x5
    80003390:	f7450513          	addi	a0,a0,-140 # 80008300 <CONSOLE_STATUS+0x2f0>
    80003394:	00000097          	auipc	ra,0x0
    80003398:	66c080e7          	jalr	1644(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
        KConsole::trapPrintString("Free blocks on this level\n");
    8000339c:	00005517          	auipc	a0,0x5
    800033a0:	f6c50513          	addi	a0,a0,-148 # 80008308 <CONSOLE_STATUS+0x2f8>
    800033a4:	00000097          	auipc	ra,0x0
    800033a8:	584080e7          	jalr	1412(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
        buddyBlock* curr = buddy->bucket[i].first;
    800033ac:	00290793          	addi	a5,s2,2
    800033b0:	00479713          	slli	a4,a5,0x4
    800033b4:	00005797          	auipc	a5,0x5
    800033b8:	6747b783          	ld	a5,1652(a5) # 80008a28 <_ZL5buddy>
    800033bc:	00e787b3          	add	a5,a5,a4
    800033c0:	0007b483          	ld	s1,0(a5)
        while(curr != 0)
    800033c4:	fa048ce3          	beqz	s1,8000337c <_Z14printBuddyInfov+0x90>
        {
            KConsole::trapPrintInt((size_t)curr, 16);
    800033c8:	00000613          	li	a2,0
    800033cc:	01000593          	li	a1,16
    800033d0:	00048513          	mv	a0,s1
    800033d4:	00000097          	auipc	ra,0x0
    800033d8:	598080e7          	jalr	1432(ra) # 8000396c <_ZN8KConsole12trapPrintIntEmii>
            KConsole::trapPrintString("\n");
    800033dc:	00005517          	auipc	a0,0x5
    800033e0:	dc450513          	addi	a0,a0,-572 # 800081a0 <CONSOLE_STATUS+0x190>
    800033e4:	00000097          	auipc	ra,0x0
    800033e8:	544080e7          	jalr	1348(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
            curr = curr->next;
    800033ec:	0004b483          	ld	s1,0(s1)
        while(curr != 0)
    800033f0:	fd5ff06f          	j	800033c4 <_Z14printBuddyInfov+0xd8>
        }
    }
    KConsole::trapPrintString("End of buddy info-------------------------------------------\n");
    800033f4:	00005517          	auipc	a0,0x5
    800033f8:	f3450513          	addi	a0,a0,-204 # 80008328 <CONSOLE_STATUS+0x318>
    800033fc:	00000097          	auipc	ra,0x0
    80003400:	52c080e7          	jalr	1324(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
}
    80003404:	01813083          	ld	ra,24(sp)
    80003408:	01013403          	ld	s0,16(sp)
    8000340c:	00813483          	ld	s1,8(sp)
    80003410:	00013903          	ld	s2,0(sp)
    80003414:	02010113          	addi	sp,sp,32
    80003418:	00008067          	ret

000000008000341c <_Z8getBuddyv>:

void* getBuddy()
{
    8000341c:	ff010113          	addi	sp,sp,-16
    80003420:	00813423          	sd	s0,8(sp)
    80003424:	01010413          	addi	s0,sp,16
    return (void*)buddy;
    80003428:	00005517          	auipc	a0,0x5
    8000342c:	60053503          	ld	a0,1536(a0) # 80008a28 <_ZL5buddy>
    80003430:	00813403          	ld	s0,8(sp)
    80003434:	01010113          	addi	sp,sp,16
    80003438:	00008067          	ret

000000008000343c <_ZN8KConsole10initializeEv>:
char* KConsole::outputBuffer = nullptr;
uint64 KConsole::pendingPutc = 0;
bool KConsole::finished = false;

void KConsole::initialize()
{
    8000343c:	fe010113          	addi	sp,sp,-32
    80003440:	00113c23          	sd	ra,24(sp)
    80003444:	00813823          	sd	s0,16(sp)
    80003448:	00913423          	sd	s1,8(sp)
    8000344c:	01213023          	sd	s2,0(sp)
    80003450:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80003454:	01800513          	li	a0,24
    80003458:	00002097          	auipc	ra,0x2
    8000345c:	26c080e7          	jalr	620(ra) # 800056c4 <_ZN10KSemaphorenwEm>
    80003460:	00050493          	mv	s1,a0
    80003464:	00050863          	beqz	a0,80003474 <_ZN8KConsole10initializeEv+0x38>
    80003468:	00000593          	li	a1,0
    8000346c:	00002097          	auipc	ra,0x2
    80003470:	ff4080e7          	jalr	-12(ra) # 80005460 <_ZN10KSemaphoreC1Ei>
    80003474:	00005797          	auipc	a5,0x5
    80003478:	5a97be23          	sd	s1,1468(a5) # 80008a30 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    8000347c:	01800513          	li	a0,24
    80003480:	00002097          	auipc	ra,0x2
    80003484:	244080e7          	jalr	580(ra) # 800056c4 <_ZN10KSemaphorenwEm>
    80003488:	00050493          	mv	s1,a0
    8000348c:	00050863          	beqz	a0,8000349c <_ZN8KConsole10initializeEv+0x60>
    80003490:	00000593          	li	a1,0
    80003494:	00002097          	auipc	ra,0x2
    80003498:	fcc080e7          	jalr	-52(ra) # 80005460 <_ZN10KSemaphoreC1Ei>
    8000349c:	00005917          	auipc	s2,0x5
    800034a0:	59490913          	addi	s2,s2,1428 # 80008a30 <_ZN8KConsole18hasCharactersInputE>
    800034a4:	00993423          	sd	s1,8(s2)
    inputBuffer = (char*)kmalloc(bufferSize);
    800034a8:	00004537          	lui	a0,0x4
    800034ac:	fffff097          	auipc	ra,0xfffff
    800034b0:	e34080e7          	jalr	-460(ra) # 800022e0 <_Z7kmallocm>
    800034b4:	00a93823          	sd	a0,16(s2)
    outputBuffer = (char*)kmalloc(bufferSize);
    800034b8:	00004537          	lui	a0,0x4
    800034bc:	fffff097          	auipc	ra,0xfffff
    800034c0:	e24080e7          	jalr	-476(ra) # 800022e0 <_Z7kmallocm>
    800034c4:	00a93c23          	sd	a0,24(s2)
}
    800034c8:	01813083          	ld	ra,24(sp)
    800034cc:	01013403          	ld	s0,16(sp)
    800034d0:	00813483          	ld	s1,8(sp)
    800034d4:	00013903          	ld	s2,0(sp)
    800034d8:	02010113          	addi	sp,sp,32
    800034dc:	00008067          	ret
    800034e0:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    800034e4:	00048513          	mv	a0,s1
    800034e8:	00002097          	auipc	ra,0x2
    800034ec:	28c080e7          	jalr	652(ra) # 80005774 <_ZN10KSemaphoredlEPv>
    800034f0:	00090513          	mv	a0,s2
    800034f4:	00006097          	auipc	ra,0x6
    800034f8:	6c4080e7          	jalr	1732(ra) # 80009bb8 <_Unwind_Resume>
    800034fc:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    80003500:	00048513          	mv	a0,s1
    80003504:	00002097          	auipc	ra,0x2
    80003508:	270080e7          	jalr	624(ra) # 80005774 <_ZN10KSemaphoredlEPv>
    8000350c:	00090513          	mv	a0,s2
    80003510:	00006097          	auipc	ra,0x6
    80003514:	6a8080e7          	jalr	1704(ra) # 80009bb8 <_Unwind_Resume>

0000000080003518 <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    80003518:	00005697          	auipc	a3,0x5
    8000351c:	51868693          	addi	a3,a3,1304 # 80008a30 <_ZN8KConsole18hasCharactersInputE>
    80003520:	0206b603          	ld	a2,32(a3)
    80003524:	00160793          	addi	a5,a2,1
    80003528:	00004737          	lui	a4,0x4
    8000352c:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    80003530:	00e7f7b3          	and	a5,a5,a4
    80003534:	0286b703          	ld	a4,40(a3)
    80003538:	04e78c63          	beq	a5,a4,80003590 <_ZN8KConsole17putCharacterInputEc+0x78>
{
    8000353c:	ff010113          	addi	sp,sp,-16
    80003540:	00113423          	sd	ra,8(sp)
    80003544:	00813023          	sd	s0,0(sp)
    80003548:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    8000354c:	00068713          	mv	a4,a3
    80003550:	0106b783          	ld	a5,16(a3)
    80003554:	00c78633          	add	a2,a5,a2
    80003558:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    8000355c:	0206b783          	ld	a5,32(a3)
    80003560:	00178793          	addi	a5,a5,1
    80003564:	000046b7          	lui	a3,0x4
    80003568:	fff68693          	addi	a3,a3,-1 # 3fff <_entry-0x7fffc001>
    8000356c:	00d7f7b3          	and	a5,a5,a3
    80003570:	02f73023          	sd	a5,32(a4)
    hasCharactersInput->signal();
    80003574:	00073503          	ld	a0,0(a4)
    80003578:	00002097          	auipc	ra,0x2
    8000357c:	104080e7          	jalr	260(ra) # 8000567c <_ZN10KSemaphore6signalEv>
}
    80003580:	00813083          	ld	ra,8(sp)
    80003584:	00013403          	ld	s0,0(sp)
    80003588:	01010113          	addi	sp,sp,16
    8000358c:	00008067          	ret
    80003590:	00008067          	ret

0000000080003594 <_ZN8KConsole24getCharactersFromConsoleEv>:
    uint64 operation = *(uint8*)CONSOLE_STATUS;
    80003594:	00005797          	auipc	a5,0x5
    80003598:	3647b783          	ld	a5,868(a5) # 800088f8 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000359c:	0007b783          	ld	a5,0(a5)
    800035a0:	0007c783          	lbu	a5,0(a5)
    if(operation & KConsole::STATUS_READ_MASK)
    800035a4:	0017f793          	andi	a5,a5,1
    800035a8:	02078063          	beqz	a5,800035c8 <_ZN8KConsole24getCharactersFromConsoleEv+0x34>
        char c = *(uint8*)CONSOLE_TX_DATA;
    800035ac:	00005797          	auipc	a5,0x5
    800035b0:	3847b783          	ld	a5,900(a5) # 80008930 <_GLOBAL_OFFSET_TABLE_+0x48>
    800035b4:	0007b783          	ld	a5,0(a5)
    800035b8:	0007c503          	lbu	a0,0(a5)
        if(KConsole::pendingGetc > 0)
    800035bc:	00005797          	auipc	a5,0x5
    800035c0:	4a47b783          	ld	a5,1188(a5) # 80008a60 <_ZN8KConsole11pendingGetcE>
    800035c4:	00079463          	bnez	a5,800035cc <_ZN8KConsole24getCharactersFromConsoleEv+0x38>
    800035c8:	00008067          	ret
{
    800035cc:	ff010113          	addi	sp,sp,-16
    800035d0:	00113423          	sd	ra,8(sp)
    800035d4:	00813023          	sd	s0,0(sp)
    800035d8:	01010413          	addi	s0,sp,16
            KConsole::pendingGetc--;
    800035dc:	fff78793          	addi	a5,a5,-1
    800035e0:	00005717          	auipc	a4,0x5
    800035e4:	48f73023          	sd	a5,1152(a4) # 80008a60 <_ZN8KConsole11pendingGetcE>
            KConsole::putCharacterInput(c);
    800035e8:	00000097          	auipc	ra,0x0
    800035ec:	f30080e7          	jalr	-208(ra) # 80003518 <_ZN8KConsole17putCharacterInputEc>
}
    800035f0:	00813083          	ld	ra,8(sp)
    800035f4:	00013403          	ld	s0,0(sp)
    800035f8:	01010113          	addi	sp,sp,16
    800035fc:	00008067          	ret

0000000080003600 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    80003600:	fe010113          	addi	sp,sp,-32
    80003604:	00113c23          	sd	ra,24(sp)
    80003608:	00813823          	sd	s0,16(sp)
    8000360c:	00913423          	sd	s1,8(sp)
    80003610:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    80003614:	00005497          	auipc	s1,0x5
    80003618:	41c48493          	addi	s1,s1,1052 # 80008a30 <_ZN8KConsole18hasCharactersInputE>
    8000361c:	0004b503          	ld	a0,0(s1)
    80003620:	00002097          	auipc	ra,0x2
    80003624:	ee4080e7          	jalr	-284(ra) # 80005504 <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    80003628:	0284b783          	ld	a5,40(s1)
    8000362c:	0204b703          	ld	a4,32(s1)
    80003630:	02e78c63          	beq	a5,a4,80003668 <_ZN8KConsole17getCharacterInputEv+0x68>
        return -1;
    char c = inputBuffer[inputHead];
    80003634:	0104b703          	ld	a4,16(s1)
    80003638:	00f70733          	add	a4,a4,a5
    8000363c:	00074503          	lbu	a0,0(a4)
    inputHead = (inputHead+1)%bufferSize;
    80003640:	00178793          	addi	a5,a5,1
    80003644:	00004737          	lui	a4,0x4
    80003648:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    8000364c:	00e7f7b3          	and	a5,a5,a4
    80003650:	02f4b423          	sd	a5,40(s1)
    return c;
}
    80003654:	01813083          	ld	ra,24(sp)
    80003658:	01013403          	ld	s0,16(sp)
    8000365c:	00813483          	ld	s1,8(sp)
    80003660:	02010113          	addi	sp,sp,32
    80003664:	00008067          	ret
        return -1;
    80003668:	0ff00513          	li	a0,255
    8000366c:	fe9ff06f          	j	80003654 <_ZN8KConsole17getCharacterInputEv+0x54>

0000000080003670 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    80003670:	00005697          	auipc	a3,0x5
    80003674:	3c068693          	addi	a3,a3,960 # 80008a30 <_ZN8KConsole18hasCharactersInputE>
    80003678:	0386b603          	ld	a2,56(a3)
    8000367c:	00160793          	addi	a5,a2,1
    80003680:	00004737          	lui	a4,0x4
    80003684:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    80003688:	00e7f7b3          	and	a5,a5,a4
    8000368c:	0406b703          	ld	a4,64(a3)
    80003690:	06e78263          	beq	a5,a4,800036f4 <_ZN8KConsole18putCharacterOutputEc+0x84>
{
    80003694:	ff010113          	addi	sp,sp,-16
    80003698:	00113423          	sd	ra,8(sp)
    8000369c:	00813023          	sd	s0,0(sp)
    800036a0:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    800036a4:	00068793          	mv	a5,a3
    800036a8:	0486b703          	ld	a4,72(a3)
    800036ac:	00170713          	addi	a4,a4,1
    800036b0:	04e6b423          	sd	a4,72(a3)
    outputBuffer[outputTail] = c;
    800036b4:	0186b703          	ld	a4,24(a3)
    800036b8:	00c70633          	add	a2,a4,a2
    800036bc:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    800036c0:	0386b703          	ld	a4,56(a3)
    800036c4:	00170713          	addi	a4,a4,1
    800036c8:	000046b7          	lui	a3,0x4
    800036cc:	fff68693          	addi	a3,a3,-1 # 3fff <_entry-0x7fffc001>
    800036d0:	00d77733          	and	a4,a4,a3
    800036d4:	02e7bc23          	sd	a4,56(a5)
    hasCharactersOutput->signal();
    800036d8:	0087b503          	ld	a0,8(a5)
    800036dc:	00002097          	auipc	ra,0x2
    800036e0:	fa0080e7          	jalr	-96(ra) # 8000567c <_ZN10KSemaphore6signalEv>
}
    800036e4:	00813083          	ld	ra,8(sp)
    800036e8:	00013403          	ld	s0,0(sp)
    800036ec:	01010113          	addi	sp,sp,16
    800036f0:	00008067          	ret
    800036f4:	00008067          	ret

00000000800036f8 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    800036f8:	fe010113          	addi	sp,sp,-32
    800036fc:	00113c23          	sd	ra,24(sp)
    80003700:	00813823          	sd	s0,16(sp)
    80003704:	00913423          	sd	s1,8(sp)
    80003708:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    8000370c:	00005497          	auipc	s1,0x5
    80003710:	32448493          	addi	s1,s1,804 # 80008a30 <_ZN8KConsole18hasCharactersInputE>
    80003714:	0084b503          	ld	a0,8(s1)
    80003718:	00002097          	auipc	ra,0x2
    8000371c:	dec080e7          	jalr	-532(ra) # 80005504 <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    80003720:	0404b783          	ld	a5,64(s1)
    80003724:	0384b703          	ld	a4,56(s1)
    80003728:	02e78c63          	beq	a5,a4,80003760 <_ZN8KConsole18getCharacterOutputEv+0x68>
        return -1;
    char c = outputBuffer[outputHead];
    8000372c:	0184b703          	ld	a4,24(s1)
    80003730:	00f70733          	add	a4,a4,a5
    80003734:	00074503          	lbu	a0,0(a4)
    outputHead = (outputHead+1)%bufferSize;
    80003738:	00178793          	addi	a5,a5,1
    8000373c:	00004737          	lui	a4,0x4
    80003740:	fff70713          	addi	a4,a4,-1 # 3fff <_entry-0x7fffc001>
    80003744:	00e7f7b3          	and	a5,a5,a4
    80003748:	04f4b023          	sd	a5,64(s1)
    return c;
}
    8000374c:	01813083          	ld	ra,24(sp)
    80003750:	01013403          	ld	s0,16(sp)
    80003754:	00813483          	ld	s1,8(sp)
    80003758:	02010113          	addi	sp,sp,32
    8000375c:	00008067          	ret
        return -1;
    80003760:	0ff00513          	li	a0,255
    80003764:	fe9ff06f          	j	8000374c <_ZN8KConsole18getCharacterOutputEv+0x54>

0000000080003768 <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    80003768:	ff010113          	addi	sp,sp,-16
    8000376c:	00113423          	sd	ra,8(sp)
    80003770:	00813023          	sd	s0,0(sp)
    80003774:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    80003778:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    8000377c:	0ff57513          	andi	a0,a0,255
    80003780:	00000097          	auipc	ra,0x0
    80003784:	ef0080e7          	jalr	-272(ra) # 80003670 <_ZN8KConsole18putCharacterOutputEc>
}
    80003788:	00813083          	ld	ra,8(sp)
    8000378c:	00013403          	ld	s0,0(sp)
    80003790:	01010113          	addi	sp,sp,16
    80003794:	00008067          	ret

0000000080003798 <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    80003798:	fe010113          	addi	sp,sp,-32
    8000379c:	00113c23          	sd	ra,24(sp)
    800037a0:	00813823          	sd	s0,16(sp)
    800037a4:	00913423          	sd	s1,8(sp)
    800037a8:	02010413          	addi	s0,sp,32
    pendingGetc++;
    800037ac:	00005717          	auipc	a4,0x5
    800037b0:	28470713          	addi	a4,a4,644 # 80008a30 <_ZN8KConsole18hasCharactersInputE>
    800037b4:	03073783          	ld	a5,48(a4)
    800037b8:	00178793          	addi	a5,a5,1
    800037bc:	02f73823          	sd	a5,48(a4)
    char ch;
    ch = getCharacterInput();
    800037c0:	00000097          	auipc	ra,0x0
    800037c4:	e40080e7          	jalr	-448(ra) # 80003600 <_ZN8KConsole17getCharacterInputEv>
    800037c8:	00050493          	mv	s1,a0
    if(ch!=0x01b)
    800037cc:	01b00793          	li	a5,27
    800037d0:	02f51663          	bne	a0,a5,800037fc <_ZN8KConsole11getcHandlerEv+0x64>
        putCharacterOutput(ch);

    if(ch==13)
    800037d4:	00d00793          	li	a5,13
    800037d8:	02f48863          	beq	s1,a5,80003808 <_ZN8KConsole11getcHandlerEv+0x70>
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    800037dc:	00048513          	mv	a0,s1
    Riscv::w_a0_sscratch();
    800037e0:	00001097          	auipc	ra,0x1
    800037e4:	e38080e7          	jalr	-456(ra) # 80004618 <_ZN5Riscv13w_a0_sscratchEv>
}
    800037e8:	01813083          	ld	ra,24(sp)
    800037ec:	01013403          	ld	s0,16(sp)
    800037f0:	00813483          	ld	s1,8(sp)
    800037f4:	02010113          	addi	sp,sp,32
    800037f8:	00008067          	ret
        putCharacterOutput(ch);
    800037fc:	00000097          	auipc	ra,0x0
    80003800:	e74080e7          	jalr	-396(ra) # 80003670 <_ZN8KConsole18putCharacterOutputEc>
    80003804:	fd1ff06f          	j	800037d4 <_ZN8KConsole11getcHandlerEv+0x3c>
        putCharacterOutput(13);
    80003808:	00d00513          	li	a0,13
    8000380c:	00000097          	auipc	ra,0x0
    80003810:	e64080e7          	jalr	-412(ra) # 80003670 <_ZN8KConsole18putCharacterOutputEc>
        putCharacterOutput(10);
    80003814:	00a00513          	li	a0,10
    80003818:	00000097          	auipc	ra,0x0
    8000381c:	e58080e7          	jalr	-424(ra) # 80003670 <_ZN8KConsole18putCharacterOutputEc>
    80003820:	fbdff06f          	j	800037dc <_ZN8KConsole11getcHandlerEv+0x44>

0000000080003824 <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    80003824:	ff010113          	addi	sp,sp,-16
    80003828:	00813423          	sd	s0,8(sp)
    8000382c:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    80003830:	00005517          	auipc	a0,0x5
    80003834:	24853503          	ld	a0,584(a0) # 80008a78 <_ZN8KConsole11pendingPutcE>
    80003838:	00153513          	seqz	a0,a0
    8000383c:	00813403          	ld	s0,8(sp)
    80003840:	01010113          	addi	sp,sp,16
    80003844:	00008067          	ret

0000000080003848 <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    80003848:	fe010113          	addi	sp,sp,-32
    8000384c:	00113c23          	sd	ra,24(sp)
    80003850:	00813823          	sd	s0,16(sp)
    80003854:	02010413          	addi	s0,sp,32
    80003858:	0180006f          	j	80003870 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>
                thread_exit_kernel();
    8000385c:	ffffe097          	auipc	ra,0xffffe
    80003860:	a24080e7          	jalr	-1500(ra) # 80001280 <_Z18thread_exit_kernelv>
    80003864:	0340006f          	j	80003898 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
                thread_dispatch_kernel();
    80003868:	ffffe097          	auipc	ra,0xffffe
    8000386c:	9d0080e7          	jalr	-1584(ra) # 80001238 <_Z22thread_dispatch_kernelv>
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    80003870:	00005797          	auipc	a5,0x5
    80003874:	0f87b783          	ld	a5,248(a5) # 80008968 <_GLOBAL_OFFSET_TABLE_+0x80>
    80003878:	0007c783          	lbu	a5,0(a5)
    8000387c:	00078e63          	beqz	a5,80003898 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80003880:	00000097          	auipc	ra,0x0
    80003884:	fa4080e7          	jalr	-92(ra) # 80003824 <_ZN8KConsole17outputBufferEmptyEv>
    80003888:	00050863          	beqz	a0,80003898 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    8000388c:	00005797          	auipc	a5,0x5
    80003890:	1d47b783          	ld	a5,468(a5) # 80008a60 <_ZN8KConsole11pendingGetcE>
    80003894:	fc0784e3          	beqz	a5,8000385c <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 operation = *(uint8*)CONSOLE_STATUS;
    80003898:	00005797          	auipc	a5,0x5
    8000389c:	0607b783          	ld	a5,96(a5) # 800088f8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800038a0:	0007b783          	ld	a5,0(a5)
    800038a4:	0007c783          	lbu	a5,0(a5)
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
    800038a8:	0207f793          	andi	a5,a5,32
    800038ac:	fa078ee3          	beqz	a5,80003868 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
    800038b0:	00005797          	auipc	a5,0x5
    800038b4:	1c87b783          	ld	a5,456(a5) # 80008a78 <_ZN8KConsole11pendingPutcE>
    800038b8:	fa0788e3          	beqz	a5,80003868 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    800038bc:	ffffe097          	auipc	ra,0xffffe
    800038c0:	99c080e7          	jalr	-1636(ra) # 80001258 <_Z20sysCallGetCharOutputv>
    800038c4:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    800038c8:	00005717          	auipc	a4,0x5
    800038cc:	16870713          	addi	a4,a4,360 # 80008a30 <_ZN8KConsole18hasCharactersInputE>
    800038d0:	04873783          	ld	a5,72(a4)
    800038d4:	fff78793          	addi	a5,a5,-1
    800038d8:	04f73423          	sd	a5,72(a4)
                *(uint8*)CONSOLE_RX_DATA = c;
    800038dc:	00005797          	auipc	a5,0x5
    800038e0:	0147b783          	ld	a5,20(a5) # 800088f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800038e4:	0007b783          	ld	a5,0(a5)
    800038e8:	fef44703          	lbu	a4,-17(s0)
    800038ec:	00e78023          	sb	a4,0(a5)
    800038f0:	f81ff06f          	j	80003870 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>

00000000800038f4 <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    800038f4:	ff010113          	addi	sp,sp,-16
    800038f8:	00113423          	sd	ra,8(sp)
    800038fc:	00813023          	sd	s0,0(sp)
    80003900:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    80003904:	00000097          	auipc	ra,0x0
    80003908:	df4080e7          	jalr	-524(ra) # 800036f8 <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    8000390c:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80003910:	00001097          	auipc	ra,0x1
    80003914:	d08080e7          	jalr	-760(ra) # 80004618 <_ZN5Riscv13w_a0_sscratchEv>
}
    80003918:	00813083          	ld	ra,8(sp)
    8000391c:	00013403          	ld	s0,0(sp)
    80003920:	01010113          	addi	sp,sp,16
    80003924:	00008067          	ret

0000000080003928 <_ZN8KConsole15trapPrintStringEPKc>:

void KConsole::trapPrintString(const char *string)
{
    80003928:	fe010113          	addi	sp,sp,-32
    8000392c:	00113c23          	sd	ra,24(sp)
    80003930:	00813823          	sd	s0,16(sp)
    80003934:	00913423          	sd	s1,8(sp)
    80003938:	02010413          	addi	s0,sp,32
    8000393c:	00050493          	mv	s1,a0
    while (*string != '\0')
    80003940:	0004c503          	lbu	a0,0(s1)
    80003944:	00050a63          	beqz	a0,80003958 <_ZN8KConsole15trapPrintStringEPKc+0x30>
    {
        KConsole::putCharacterOutput(*string);
    80003948:	00000097          	auipc	ra,0x0
    8000394c:	d28080e7          	jalr	-728(ra) # 80003670 <_ZN8KConsole18putCharacterOutputEc>
        string++;
    80003950:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003954:	fedff06f          	j	80003940 <_ZN8KConsole15trapPrintStringEPKc+0x18>
    }
}
    80003958:	01813083          	ld	ra,24(sp)
    8000395c:	01013403          	ld	s0,16(sp)
    80003960:	00813483          	ld	s1,8(sp)
    80003964:	02010113          	addi	sp,sp,32
    80003968:	00008067          	ret

000000008000396c <_ZN8KConsole12trapPrintIntEmii>:

void KConsole::trapPrintInt(size_t xx, int base, int sgn)
{
    8000396c:	fb010113          	addi	sp,sp,-80
    80003970:	04113423          	sd	ra,72(sp)
    80003974:	04813023          	sd	s0,64(sp)
    80003978:	02913c23          	sd	s1,56(sp)
    8000397c:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    80003980:	00005797          	auipc	a5,0x5
    80003984:	9e878793          	addi	a5,a5,-1560 # 80008368 <CONSOLE_STATUS+0x358>
    80003988:	0007b703          	ld	a4,0(a5)
    8000398c:	fce43423          	sd	a4,-56(s0)
    80003990:	0087b703          	ld	a4,8(a5)
    80003994:	fce43823          	sd	a4,-48(s0)
    80003998:	0107c783          	lbu	a5,16(a5)
    8000399c:	fcf40c23          	sb	a5,-40(s0)
        x = -xx;
    } else {
        x = xx;
    }

    i = 0;
    800039a0:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    800039a4:	02b57733          	remu	a4,a0,a1
    800039a8:	fe040693          	addi	a3,s0,-32
    800039ac:	00e68733          	add	a4,a3,a4
    800039b0:	fe874703          	lbu	a4,-24(a4)
    800039b4:	009687b3          	add	a5,a3,s1
    800039b8:	0014849b          	addiw	s1,s1,1
    800039bc:	fce78c23          	sb	a4,-40(a5)
    }while((x /= base) != 0);
    800039c0:	00050793          	mv	a5,a0
    800039c4:	02b55533          	divu	a0,a0,a1
    800039c8:	fcb7fee3          	bgeu	a5,a1,800039a4 <_ZN8KConsole12trapPrintIntEmii+0x38>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    800039cc:	fff4849b          	addiw	s1,s1,-1
    800039d0:	0004ce63          	bltz	s1,800039ec <_ZN8KConsole12trapPrintIntEmii+0x80>
        KConsole::putCharacterOutput(buf[i]);
    800039d4:	fe040793          	addi	a5,s0,-32
    800039d8:	009787b3          	add	a5,a5,s1
    800039dc:	fd87c503          	lbu	a0,-40(a5)
    800039e0:	00000097          	auipc	ra,0x0
    800039e4:	c90080e7          	jalr	-880(ra) # 80003670 <_ZN8KConsole18putCharacterOutputEc>
    800039e8:	fe5ff06f          	j	800039cc <_ZN8KConsole12trapPrintIntEmii+0x60>
}
    800039ec:	04813083          	ld	ra,72(sp)
    800039f0:	04013403          	ld	s0,64(sp)
    800039f4:	03813483          	ld	s1,56(sp)
    800039f8:	05010113          	addi	sp,sp,80
    800039fc:	00008067          	ret

0000000080003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>:

void KConsole::trapPrintStringInt(const char *string, size_t xx, int base)
{
    80003a00:	fe010113          	addi	sp,sp,-32
    80003a04:	00113c23          	sd	ra,24(sp)
    80003a08:	00813823          	sd	s0,16(sp)
    80003a0c:	00913423          	sd	s1,8(sp)
    80003a10:	01213023          	sd	s2,0(sp)
    80003a14:	02010413          	addi	s0,sp,32
    80003a18:	00058493          	mv	s1,a1
    80003a1c:	00060913          	mv	s2,a2
    trapPrintString(string);
    80003a20:	00000097          	auipc	ra,0x0
    80003a24:	f08080e7          	jalr	-248(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    trapPrintInt(xx,base);
    80003a28:	00000613          	li	a2,0
    80003a2c:	00090593          	mv	a1,s2
    80003a30:	00048513          	mv	a0,s1
    80003a34:	00000097          	auipc	ra,0x0
    80003a38:	f38080e7          	jalr	-200(ra) # 8000396c <_ZN8KConsole12trapPrintIntEmii>
    trapPrintString("\n");
    80003a3c:	00004517          	auipc	a0,0x4
    80003a40:	76450513          	addi	a0,a0,1892 # 800081a0 <CONSOLE_STATUS+0x190>
    80003a44:	00000097          	auipc	ra,0x0
    80003a48:	ee4080e7          	jalr	-284(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
}
    80003a4c:	01813083          	ld	ra,24(sp)
    80003a50:	01013403          	ld	s0,16(sp)
    80003a54:	00813483          	ld	s1,8(sp)
    80003a58:	00013903          	ld	s2,0(sp)
    80003a5c:	02010113          	addi	sp,sp,32
    80003a60:	00008067          	ret

0000000080003a64 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../../h/Riscv.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    80003a64:	ff010113          	addi	sp,sp,-16
    80003a68:	00813423          	sd	s0,8(sp)
    80003a6c:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    80003a70:	00005797          	auipc	a5,0x5
    80003a74:	f087b783          	ld	a5,-248(a5) # 80008978 <_GLOBAL_OFFSET_TABLE_+0x90>
    80003a78:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    80003a7c:	00500793          	li	a5,5
    80003a80:	04f62023          	sw	a5,64(a2)
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    80003a84:	00005797          	auipc	a5,0x5
    80003a88:	0047b783          	ld	a5,4(a5) # 80008a88 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    80003a8c:	00000593          	li	a1,0
    while(curr != 0)
    80003a90:	02078063          	beqz	a5,80003ab0 <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    80003a94:	02063683          	ld	a3,32(a2)
    80003a98:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    80003a9c:	00e6e863          	bltu	a3,a4,80003aac <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    80003aa0:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    80003aa4:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003aa8:	fe9ff06f          	j	80003a90 <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    80003aac:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    80003ab0:	00058a63          	beqz	a1,80003ac4 <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    80003ab4:	00c5b423          	sd	a2,8(a1)
}
    80003ab8:	00813403          	ld	s0,8(sp)
    80003abc:	01010113          	addi	sp,sp,16
    80003ac0:	00008067          	ret
        sleepingPCBHead = PCB::running;
    80003ac4:	00005797          	auipc	a5,0x5
    80003ac8:	fcc7b223          	sd	a2,-60(a5) # 80008a88 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80003acc:	fedff06f          	j	80003ab8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

0000000080003ad0 <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    PCB* curr = sleepingPCBHead;
    80003ad0:	00005517          	auipc	a0,0x5
    80003ad4:	fb853503          	ld	a0,-72(a0) # 80008a88 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80003ad8:	06050e63          	beqz	a0,80003b54 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
        return;

    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003adc:	06050c63          	beqz	a0,80003b54 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    80003ae0:	02053783          	ld	a5,32(a0)
    80003ae4:	00005717          	auipc	a4,0x5
    80003ae8:	e6473703          	ld	a4,-412(a4) # 80008948 <_GLOBAL_OFFSET_TABLE_+0x60>
    80003aec:	00073703          	ld	a4,0(a4)
    80003af0:	06f76263          	bltu	a4,a5,80003b54 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    80003af4:	fe010113          	addi	sp,sp,-32
    80003af8:	00113c23          	sd	ra,24(sp)
    80003afc:	00813823          	sd	s0,16(sp)
    80003b00:	00913423          	sd	s1,8(sp)
    80003b04:	02010413          	addi	s0,sp,32
    80003b08:	0180006f          	j	80003b20 <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80003b0c:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003b10:	00005717          	auipc	a4,0x5
    80003b14:	e3873703          	ld	a4,-456(a4) # 80008948 <_GLOBAL_OFFSET_TABLE_+0x60>
    80003b18:	00073703          	ld	a4,0(a4)
    80003b1c:	02f76263          	bltu	a4,a5,80003b40 <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    80003b20:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    80003b24:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    80003b28:	00000097          	auipc	ra,0x0
    80003b2c:	0b8080e7          	jalr	184(ra) # 80003be0 <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    80003b30:	00005797          	auipc	a5,0x5
    80003b34:	f497bc23          	sd	s1,-168(a5) # 80008a88 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    80003b38:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003b3c:	fc0498e3          	bnez	s1,80003b0c <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    80003b40:	01813083          	ld	ra,24(sp)
    80003b44:	01013403          	ld	s0,16(sp)
    80003b48:	00813483          	ld	s1,8(sp)
    80003b4c:	02010113          	addi	sp,sp,32
    80003b50:	00008067          	ret
    80003b54:	00008067          	ret

0000000080003b58 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    80003b58:	ff010113          	addi	sp,sp,-16
    80003b5c:	00113423          	sd	ra,8(sp)
    80003b60:	00813023          	sd	s0,0(sp)
    80003b64:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80003b68:	00001097          	auipc	ra,0x1
    80003b6c:	1e4080e7          	jalr	484(ra) # 80004d4c <_ZN15MemoryAllocator7kmallocEm>
}
    80003b70:	00813083          	ld	ra,8(sp)
    80003b74:	00013403          	ld	s0,0(sp)
    80003b78:	01010113          	addi	sp,sp,16
    80003b7c:	00008067          	ret

0000000080003b80 <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    80003b80:	ff010113          	addi	sp,sp,-16
    80003b84:	00113423          	sd	ra,8(sp)
    80003b88:	00813023          	sd	s0,0(sp)
    80003b8c:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80003b90:	00001097          	auipc	ra,0x1
    80003b94:	22c080e7          	jalr	556(ra) # 80004dbc <_ZN15MemoryAllocator5kfreeEPv>
}
    80003b98:	00813083          	ld	ra,8(sp)
    80003b9c:	00013403          	ld	s0,0(sp)
    80003ba0:	01010113          	addi	sp,sp,16
    80003ba4:	00008067          	ret

0000000080003ba8 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    80003ba8:	ff010113          	addi	sp,sp,-16
    80003bac:	00813423          	sd	s0,8(sp)
    80003bb0:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80003bb4:	00005797          	auipc	a5,0x5
    80003bb8:	edc7b783          	ld	a5,-292(a5) # 80008a90 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80003bbc:	00000513          	li	a0,0
    while(curr != 0)
    80003bc0:	00078863          	beqz	a5,80003bd0 <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80003bc4:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80003bc8:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003bcc:	ff5ff06f          	j	80003bc0 <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    80003bd0:	0005051b          	sext.w	a0,a0
    80003bd4:	00813403          	ld	s0,8(sp)
    80003bd8:	01010113          	addi	sp,sp,16
    80003bdc:	00008067          	ret

0000000080003be0 <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    80003be0:	ff010113          	addi	sp,sp,-16
    80003be4:	00813423          	sd	s0,8(sp)
    80003be8:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80003bec:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    80003bf0:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    80003bf4:	00005797          	auipc	a5,0x5
    80003bf8:	e9c7b783          	ld	a5,-356(a5) # 80008a90 <_ZN9Scheduler16schedulerPCBHeadE>
    80003bfc:	02078263          	beqz	a5,80003c20 <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    80003c00:	00005797          	auipc	a5,0x5
    80003c04:	e9078793          	addi	a5,a5,-368 # 80008a90 <_ZN9Scheduler16schedulerPCBHeadE>
    80003c08:	0087b703          	ld	a4,8(a5)
    80003c0c:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    80003c10:	00a7b423          	sd	a0,8(a5)
    }
}
    80003c14:	00813403          	ld	s0,8(sp)
    80003c18:	01010113          	addi	sp,sp,16
    80003c1c:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    80003c20:	00005797          	auipc	a5,0x5
    80003c24:	e7078793          	addi	a5,a5,-400 # 80008a90 <_ZN9Scheduler16schedulerPCBHeadE>
    80003c28:	00a7b423          	sd	a0,8(a5)
    80003c2c:	00a7b023          	sd	a0,0(a5)
    80003c30:	fe5ff06f          	j	80003c14 <_ZN9Scheduler3putEP3PCB+0x34>

0000000080003c34 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    80003c34:	ff010113          	addi	sp,sp,-16
    80003c38:	00813423          	sd	s0,8(sp)
    80003c3c:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    80003c40:	00005517          	auipc	a0,0x5
    80003c44:	e5053503          	ld	a0,-432(a0) # 80008a90 <_ZN9Scheduler16schedulerPCBHeadE>
    80003c48:	00050c63          	beqz	a0,80003c60 <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80003c4c:	00853783          	ld	a5,8(a0)
    80003c50:	00078e63          	beqz	a5,80003c6c <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    80003c54:	00005717          	auipc	a4,0x5
    80003c58:	e2f73e23          	sd	a5,-452(a4) # 80008a90 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    80003c5c:	00053423          	sd	zero,8(a0)
    return retval;
}
    80003c60:	00813403          	ld	s0,8(sp)
    80003c64:	01010113          	addi	sp,sp,16
    80003c68:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    80003c6c:	00005797          	auipc	a5,0x5
    80003c70:	e2478793          	addi	a5,a5,-476 # 80008a90 <_ZN9Scheduler16schedulerPCBHeadE>
    80003c74:	0007b423          	sd	zero,8(a5)
    80003c78:	0007b023          	sd	zero,0(a5)
    80003c7c:	fe1ff06f          	j	80003c5c <_ZN9Scheduler3getEv+0x28>

0000000080003c80 <_ZN9Scheduler5printEv>:

void Scheduler::print()
{
    80003c80:	fe010113          	addi	sp,sp,-32
    80003c84:	00113c23          	sd	ra,24(sp)
    80003c88:	00813823          	sd	s0,16(sp)
    80003c8c:	00913423          	sd	s1,8(sp)
    80003c90:	02010413          	addi	s0,sp,32
    //trapPrintString("Scheduler print\n");
    PCB* curr = schedulerPCBHead;
    80003c94:	00005497          	auipc	s1,0x5
    80003c98:	dfc4b483          	ld	s1,-516(s1) # 80008a90 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    80003c9c:	02048863          	beqz	s1,80003ccc <_ZN9Scheduler5printEv+0x4c>
    {
        KConsole::trapPrintInt((uint64)curr, 16);
    80003ca0:	00000613          	li	a2,0
    80003ca4:	01000593          	li	a1,16
    80003ca8:	00048513          	mv	a0,s1
    80003cac:	00000097          	auipc	ra,0x0
    80003cb0:	cc0080e7          	jalr	-832(ra) # 8000396c <_ZN8KConsole12trapPrintIntEmii>
        KConsole::trapPrintString("\n");
    80003cb4:	00004517          	auipc	a0,0x4
    80003cb8:	4ec50513          	addi	a0,a0,1260 # 800081a0 <CONSOLE_STATUS+0x190>
    80003cbc:	00000097          	auipc	ra,0x0
    80003cc0:	c6c080e7          	jalr	-916(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
        curr = curr->nextPCB;
    80003cc4:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003cc8:	fd5ff06f          	j	80003c9c <_ZN9Scheduler5printEv+0x1c>
    }
}
    80003ccc:	01813083          	ld	ra,24(sp)
    80003cd0:	01013403          	ld	s0,16(sp)
    80003cd4:	00813483          	ld	s1,8(sp)
    80003cd8:	02010113          	addi	sp,sp,32
    80003cdc:	00008067          	ret

0000000080003ce0 <main>:
#include "../../h/Riscv.hpp"

void main()
{
    80003ce0:	ff010113          	addi	sp,sp,-16
    80003ce4:	00113423          	sd	ra,8(sp)
    80003ce8:	00813023          	sd	s0,0(sp)
    80003cec:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    80003cf0:	00001097          	auipc	ra,0x1
    80003cf4:	854080e7          	jalr	-1964(ra) # 80004544 <_ZN5Riscv10kernelMainEv>
    80003cf8:	00813083          	ld	ra,8(sp)
    80003cfc:	00013403          	ld	s0,0(sp)
    80003d00:	01010113          	addi	sp,sp,16
    80003d04:	00008067          	ret

0000000080003d08 <_Z14buddyInitTest1v>:
#include "../../h/buddyTests.hpp"
#include "../../h/KConsole.hpp"
#include "../../h/MemoryAllocator.hpp"

void buddyInitTest1()
{
    80003d08:	ff010113          	addi	sp,sp,-16
    80003d0c:	00113423          	sd	ra,8(sp)
    80003d10:	00813023          	sd	s0,0(sp)
    80003d14:	01010413          	addi	s0,sp,16
    printBuddyInfo();
    80003d18:	fffff097          	auipc	ra,0xfffff
    80003d1c:	5d4080e7          	jalr	1492(ra) # 800032ec <_Z14printBuddyInfov>
}
    80003d20:	00813083          	ld	ra,8(sp)
    80003d24:	00013403          	ld	s0,0(sp)
    80003d28:	01010113          	addi	sp,sp,16
    80003d2c:	00008067          	ret

0000000080003d30 <_Z20buddyOnlyAllocsTest1v>:

void buddyOnlyAllocsTest1()
{
    80003d30:	ff010113          	addi	sp,sp,-16
    80003d34:	00113423          	sd	ra,8(sp)
    80003d38:	00813023          	sd	s0,0(sp)
    80003d3c:	01010413          	addi	s0,sp,16
    printBuddyInfo();
    80003d40:	fffff097          	auipc	ra,0xfffff
    80003d44:	5ac080e7          	jalr	1452(ra) # 800032ec <_Z14printBuddyInfov>
    buddy_alloc(1);
    80003d48:	00100513          	li	a0,1
    80003d4c:	fffff097          	auipc	ra,0xfffff
    80003d50:	23c080e7          	jalr	572(ra) # 80002f88 <_Z11buddy_allocm>
    printBuddyInfo();
    80003d54:	fffff097          	auipc	ra,0xfffff
    80003d58:	598080e7          	jalr	1432(ra) # 800032ec <_Z14printBuddyInfov>
    buddy_alloc(1);
    80003d5c:	00100513          	li	a0,1
    80003d60:	fffff097          	auipc	ra,0xfffff
    80003d64:	228080e7          	jalr	552(ra) # 80002f88 <_Z11buddy_allocm>
    printBuddyInfo();
    80003d68:	fffff097          	auipc	ra,0xfffff
    80003d6c:	584080e7          	jalr	1412(ra) # 800032ec <_Z14printBuddyInfov>
    buddy_alloc(1);
    80003d70:	00100513          	li	a0,1
    80003d74:	fffff097          	auipc	ra,0xfffff
    80003d78:	214080e7          	jalr	532(ra) # 80002f88 <_Z11buddy_allocm>
    printBuddyInfo();
    80003d7c:	fffff097          	auipc	ra,0xfffff
    80003d80:	570080e7          	jalr	1392(ra) # 800032ec <_Z14printBuddyInfov>
    buddy_alloc(3);
    80003d84:	00300513          	li	a0,3
    80003d88:	fffff097          	auipc	ra,0xfffff
    80003d8c:	200080e7          	jalr	512(ra) # 80002f88 <_Z11buddy_allocm>
    printBuddyInfo();
    80003d90:	fffff097          	auipc	ra,0xfffff
    80003d94:	55c080e7          	jalr	1372(ra) # 800032ec <_Z14printBuddyInfov>
}
    80003d98:	00813083          	ld	ra,8(sp)
    80003d9c:	00013403          	ld	s0,0(sp)
    80003da0:	01010113          	addi	sp,sp,16
    80003da4:	00008067          	ret

0000000080003da8 <_Z20buddyOnlyAllocsTest2v>:

void buddyOnlyAllocsTest2()
{
    80003da8:	ff010113          	addi	sp,sp,-16
    80003dac:	00113423          	sd	ra,8(sp)
    80003db0:	00813023          	sd	s0,0(sp)
    80003db4:	01010413          	addi	s0,sp,16
    void* adr = buddy_alloc(100);
    80003db8:	06400513          	li	a0,100
    80003dbc:	fffff097          	auipc	ra,0xfffff
    80003dc0:	1cc080e7          	jalr	460(ra) # 80002f88 <_Z11buddy_allocm>
    if(adr == nullptr)
    80003dc4:	00050a63          	beqz	a0,80003dd8 <_Z20buddyOnlyAllocsTest2v+0x30>
    {
        printBuddyInfo();
    }
}
    80003dc8:	00813083          	ld	ra,8(sp)
    80003dcc:	00013403          	ld	s0,0(sp)
    80003dd0:	01010113          	addi	sp,sp,16
    80003dd4:	00008067          	ret
        printBuddyInfo();
    80003dd8:	fffff097          	auipc	ra,0xfffff
    80003ddc:	514080e7          	jalr	1300(ra) # 800032ec <_Z14printBuddyInfov>
}
    80003de0:	fe9ff06f          	j	80003dc8 <_Z20buddyOnlyAllocsTest2v+0x20>

0000000080003de4 <_Z19buddyAllocFreeTest1v>:

void buddyAllocFreeTest1()
{
    80003de4:	fe010113          	addi	sp,sp,-32
    80003de8:	00113c23          	sd	ra,24(sp)
    80003dec:	00813823          	sd	s0,16(sp)
    80003df0:	00913423          	sd	s1,8(sp)
    80003df4:	01213023          	sd	s2,0(sp)
    80003df8:	02010413          	addi	s0,sp,32
    printBuddyInfo();
    80003dfc:	fffff097          	auipc	ra,0xfffff
    80003e00:	4f0080e7          	jalr	1264(ra) # 800032ec <_Z14printBuddyInfov>
    void* adr = buddy_alloc(1);
    80003e04:	00100513          	li	a0,1
    80003e08:	fffff097          	auipc	ra,0xfffff
    80003e0c:	180080e7          	jalr	384(ra) # 80002f88 <_Z11buddy_allocm>
    80003e10:	00050493          	mv	s1,a0
    printBuddyInfo();
    80003e14:	fffff097          	auipc	ra,0xfffff
    80003e18:	4d8080e7          	jalr	1240(ra) # 800032ec <_Z14printBuddyInfov>
    buddy_free(adr, 1);
    80003e1c:	00100593          	li	a1,1
    80003e20:	00048513          	mv	a0,s1
    80003e24:	fffff097          	auipc	ra,0xfffff
    80003e28:	458080e7          	jalr	1112(ra) # 8000327c <_Z10buddy_freePvm>
    printBuddyInfo();
    80003e2c:	fffff097          	auipc	ra,0xfffff
    80003e30:	4c0080e7          	jalr	1216(ra) # 800032ec <_Z14printBuddyInfov>

    adr = buddy_alloc(2);
    80003e34:	00200513          	li	a0,2
    80003e38:	fffff097          	auipc	ra,0xfffff
    80003e3c:	150080e7          	jalr	336(ra) # 80002f88 <_Z11buddy_allocm>
    80003e40:	00050493          	mv	s1,a0
    void* adr2 = buddy_alloc(3);
    80003e44:	00300513          	li	a0,3
    80003e48:	fffff097          	auipc	ra,0xfffff
    80003e4c:	140080e7          	jalr	320(ra) # 80002f88 <_Z11buddy_allocm>
    80003e50:	00050913          	mv	s2,a0
    printBuddyInfo();
    80003e54:	fffff097          	auipc	ra,0xfffff
    80003e58:	498080e7          	jalr	1176(ra) # 800032ec <_Z14printBuddyInfov>

    buddy_free(adr, 2);
    80003e5c:	00200593          	li	a1,2
    80003e60:	00048513          	mv	a0,s1
    80003e64:	fffff097          	auipc	ra,0xfffff
    80003e68:	418080e7          	jalr	1048(ra) # 8000327c <_Z10buddy_freePvm>
    printBuddyInfo();
    80003e6c:	fffff097          	auipc	ra,0xfffff
    80003e70:	480080e7          	jalr	1152(ra) # 800032ec <_Z14printBuddyInfov>
    adr = buddy_alloc(1);
    80003e74:	00100513          	li	a0,1
    80003e78:	fffff097          	auipc	ra,0xfffff
    80003e7c:	110080e7          	jalr	272(ra) # 80002f88 <_Z11buddy_allocm>
    80003e80:	00050493          	mv	s1,a0
    printBuddyInfo();
    80003e84:	fffff097          	auipc	ra,0xfffff
    80003e88:	468080e7          	jalr	1128(ra) # 800032ec <_Z14printBuddyInfov>

    buddy_free(adr2, 3);
    80003e8c:	00300593          	li	a1,3
    80003e90:	00090513          	mv	a0,s2
    80003e94:	fffff097          	auipc	ra,0xfffff
    80003e98:	3e8080e7          	jalr	1000(ra) # 8000327c <_Z10buddy_freePvm>
    printBuddyInfo();
    80003e9c:	fffff097          	auipc	ra,0xfffff
    80003ea0:	450080e7          	jalr	1104(ra) # 800032ec <_Z14printBuddyInfov>
    buddy_free(adr, 1);
    80003ea4:	00100593          	li	a1,1
    80003ea8:	00048513          	mv	a0,s1
    80003eac:	fffff097          	auipc	ra,0xfffff
    80003eb0:	3d0080e7          	jalr	976(ra) # 8000327c <_Z10buddy_freePvm>
    printBuddyInfo();
    80003eb4:	fffff097          	auipc	ra,0xfffff
    80003eb8:	438080e7          	jalr	1080(ra) # 800032ec <_Z14printBuddyInfov>
}
    80003ebc:	01813083          	ld	ra,24(sp)
    80003ec0:	01013403          	ld	s0,16(sp)
    80003ec4:	00813483          	ld	s1,8(sp)
    80003ec8:	00013903          	ld	s2,0(sp)
    80003ecc:	02010113          	addi	sp,sp,32
    80003ed0:	00008067          	ret

0000000080003ed4 <_Z13buddyTestMixav>:

void buddyTestMixa()
{
    80003ed4:	fd010113          	addi	sp,sp,-48
    80003ed8:	02113423          	sd	ra,40(sp)
    80003edc:	02813023          	sd	s0,32(sp)
    80003ee0:	00913c23          	sd	s1,24(sp)
    80003ee4:	01213823          	sd	s2,16(sp)
    80003ee8:	01313423          	sd	s3,8(sp)
    80003eec:	01413023          	sd	s4,0(sp)
    80003ef0:	03010413          	addi	s0,sp,48
    void** x = (void**)MemoryAllocator::kmalloc(5000*sizeof(void*));
    80003ef4:	0000a537          	lui	a0,0xa
    80003ef8:	c4050513          	addi	a0,a0,-960 # 9c40 <_entry-0x7fff63c0>
    80003efc:	00001097          	auipc	ra,0x1
    80003f00:	e50080e7          	jalr	-432(ra) # 80004d4c <_ZN15MemoryAllocator7kmallocEm>
    80003f04:	00050993          	mv	s3,a0
    printBuddyInfo();
    80003f08:	fffff097          	auipc	ra,0xfffff
    80003f0c:	3e4080e7          	jalr	996(ra) # 800032ec <_Z14printBuddyInfov>
    for(int i = 0; i < 5000;i++)
    80003f10:	00000493          	li	s1,0
    80003f14:	0080006f          	j	80003f1c <_Z13buddyTestMixav+0x48>
    80003f18:	0014849b          	addiw	s1,s1,1
    80003f1c:	000017b7          	lui	a5,0x1
    80003f20:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    80003f24:	0697c063          	blt	a5,s1,80003f84 <_Z13buddyTestMixav+0xb0>
    {
        x[i] = buddy_alloc(2);
    80003f28:	00349913          	slli	s2,s1,0x3
    80003f2c:	01298933          	add	s2,s3,s2
    80003f30:	00200513          	li	a0,2
    80003f34:	fffff097          	auipc	ra,0xfffff
    80003f38:	054080e7          	jalr	84(ra) # 80002f88 <_Z11buddy_allocm>
    80003f3c:	00a93023          	sd	a0,0(s2)
        if(x[i] == nullptr)
    80003f40:	fc051ce3          	bnez	a0,80003f18 <_Z13buddyTestMixav+0x44>
        {
            KConsole::trapPrintStringInt("Bad allocation ", i);
    80003f44:	00a00613          	li	a2,10
    80003f48:	00048593          	mv	a1,s1
    80003f4c:	00004517          	auipc	a0,0x4
    80003f50:	43450513          	addi	a0,a0,1076 # 80008380 <CONSOLE_STATUS+0x370>
    80003f54:	00000097          	auipc	ra,0x0
    80003f58:	aac080e7          	jalr	-1364(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
            for(int j = 0;j < i;j++)
    80003f5c:	00000913          	li	s2,0
    80003f60:	02995263          	bge	s2,s1,80003f84 <_Z13buddyTestMixav+0xb0>
            {
                buddy_free(x[j], 2);
    80003f64:	00391793          	slli	a5,s2,0x3
    80003f68:	00f987b3          	add	a5,s3,a5
    80003f6c:	00200593          	li	a1,2
    80003f70:	0007b503          	ld	a0,0(a5)
    80003f74:	fffff097          	auipc	ra,0xfffff
    80003f78:	308080e7          	jalr	776(ra) # 8000327c <_Z10buddy_freePvm>
            for(int j = 0;j < i;j++)
    80003f7c:	0019091b          	addiw	s2,s2,1
    80003f80:	fe1ff06f          	j	80003f60 <_Z13buddyTestMixav+0x8c>
            }
            break;
        }
    }
    printBuddyInfo();
    80003f84:	fffff097          	auipc	ra,0xfffff
    80003f88:	368080e7          	jalr	872(ra) # 800032ec <_Z14printBuddyInfov>
}
    80003f8c:	02813083          	ld	ra,40(sp)
    80003f90:	02013403          	ld	s0,32(sp)
    80003f94:	01813483          	ld	s1,24(sp)
    80003f98:	01013903          	ld	s2,16(sp)
    80003f9c:	00813983          	ld	s3,8(sp)
    80003fa0:	00013a03          	ld	s4,0(sp)
    80003fa4:	03010113          	addi	sp,sp,48
    80003fa8:	00008067          	ret

0000000080003fac <_ZN5Riscv17initVirtualMemoryEv>:
extern char *userDataStart;
extern char *kernelTextStart;
extern char *kernelDataStart;

void Riscv::initVirtualMemory()
{
    80003fac:	ff010113          	addi	sp,sp,-16
    80003fb0:	00813423          	sd	s0,8(sp)
    80003fb4:	01010413          	addi	s0,sp,16
    //size_t addr = (size_t)getNextBlockAddr((size_t)HEAP_START_ADDR);

    //size_t pmtSize = (1 << 9);
    //size_t descSize = 64;
    //size_t
}
    80003fb8:	00813403          	ld	s0,8(sp)
    80003fbc:	01010113          	addi	sp,sp,16
    80003fc0:	00008067          	ret

0000000080003fc4 <_ZN5Riscv16enableInterruptsEv>:
        thread_dispatch_kernel();
    }
    disableInterrupts();
}

void Riscv::enableInterrupts() {
    80003fc4:	ff010113          	addi	sp,sp,-16
    80003fc8:	00813423          	sd	s0,8(sp)
    80003fcc:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80003fd0:	00200793          	li	a5,2
    80003fd4:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    80003fd8:	00813403          	ld	s0,8(sp)
    80003fdc:	01010113          	addi	sp,sp,16
    80003fe0:	00008067          	ret

0000000080003fe4 <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    80003fe4:	ff010113          	addi	sp,sp,-16
    80003fe8:	00813423          	sd	s0,8(sp)
    80003fec:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80003ff0:	00200793          	li	a5,2
    80003ff4:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    80003ff8:	00813403          	ld	s0,8(sp)
    80003ffc:	01010113          	addi	sp,sp,16
    80004000:	00008067          	ret

0000000080004004 <_ZN5Riscv9endSystemEv>:
{
    80004004:	ff010113          	addi	sp,sp,-16
    80004008:	00113423          	sd	ra,8(sp)
    8000400c:	00813023          	sd	s0,0(sp)
    80004010:	01010413          	addi	s0,sp,16
    disableInterrupts();
    80004014:	00000097          	auipc	ra,0x0
    80004018:	fd0080e7          	jalr	-48(ra) # 80003fe4 <_ZN5Riscv17disableInterruptsEv>
    finishSystem = true;
    8000401c:	00100793          	li	a5,1
    80004020:	00005717          	auipc	a4,0x5
    80004024:	a8f70023          	sb	a5,-1408(a4) # 80008aa0 <_ZN5Riscv12finishSystemE>
        pcb = Scheduler::get();
    80004028:	00000097          	auipc	ra,0x0
    8000402c:	c0c080e7          	jalr	-1012(ra) # 80003c34 <_ZN9Scheduler3getEv>
        if(pcb == 0) break;
    80004030:	fe051ce3          	bnez	a0,80004028 <_ZN5Riscv9endSystemEv+0x24>
    Scheduler::put(PCB::consolePCB);
    80004034:	00005797          	auipc	a5,0x5
    80004038:	92c7b783          	ld	a5,-1748(a5) # 80008960 <_GLOBAL_OFFSET_TABLE_+0x78>
    8000403c:	0007b503          	ld	a0,0(a5)
    80004040:	00000097          	auipc	ra,0x0
    80004044:	ba0080e7          	jalr	-1120(ra) # 80003be0 <_ZN9Scheduler3putEP3PCB>
    KConsole::pendingGetc = 0;
    80004048:	00005797          	auipc	a5,0x5
    8000404c:	8e07b783          	ld	a5,-1824(a5) # 80008928 <_GLOBAL_OFFSET_TABLE_+0x40>
    80004050:	0007b023          	sd	zero,0(a5)
    enableInterrupts();
    80004054:	00000097          	auipc	ra,0x0
    80004058:	f70080e7          	jalr	-144(ra) # 80003fc4 <_ZN5Riscv16enableInterruptsEv>
    while(!PCB::consolePCB->isFinished())
    8000405c:	00005797          	auipc	a5,0x5
    80004060:	9047b783          	ld	a5,-1788(a5) # 80008960 <_GLOBAL_OFFSET_TABLE_+0x78>
    80004064:	0007b503          	ld	a0,0(a5)
    80004068:	fffff097          	auipc	ra,0xfffff
    8000406c:	a48080e7          	jalr	-1464(ra) # 80002ab0 <_ZN3PCB10isFinishedEv>
    80004070:	00051863          	bnez	a0,80004080 <_ZN5Riscv9endSystemEv+0x7c>
        thread_dispatch_kernel();
    80004074:	ffffd097          	auipc	ra,0xffffd
    80004078:	1c4080e7          	jalr	452(ra) # 80001238 <_Z22thread_dispatch_kernelv>
    while(!PCB::consolePCB->isFinished())
    8000407c:	fe1ff06f          	j	8000405c <_ZN5Riscv9endSystemEv+0x58>
    disableInterrupts();
    80004080:	00000097          	auipc	ra,0x0
    80004084:	f64080e7          	jalr	-156(ra) # 80003fe4 <_ZN5Riscv17disableInterruptsEv>
}
    80004088:	00813083          	ld	ra,8(sp)
    8000408c:	00013403          	ld	s0,0(sp)
    80004090:	01010113          	addi	sp,sp,16
    80004094:	00008067          	ret

0000000080004098 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    80004098:	ff010113          	addi	sp,sp,-16
    8000409c:	00813423          	sd	s0,8(sp)
    800040a0:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread) {
    800040a4:	00005797          	auipc	a5,0x5
    800040a8:	8d47b783          	ld	a5,-1836(a5) # 80008978 <_GLOBAL_OFFSET_TABLE_+0x90>
    800040ac:	0007b783          	ld	a5,0(a5)
    800040b0:	0007c703          	lbu	a4,0(a5)
    800040b4:	00070c63          	beqz	a4,800040cc <_ZN5Riscv10popSppSpieEv+0x34>
        __asm__ volatile ("csrw sepc, ra");
    800040b8:	14109073          	csrw	sepc,ra
        __asm__ volatile ("sret");
    800040bc:	10200073          	sret
        __asm__ volatile("mv a0, %0"::"r"((size_t)PCB::running->body));
        __asm__ volatile("mv a1, %0"::"r"((size_t)PCB::running->args));
        __asm__ volatile("csrw sepc, %0"::"r"(ra));
        __asm__ volatile ("sret");
    }
}
    800040c0:	00813403          	ld	s0,8(sp)
    800040c4:	01010113          	addi	sp,sp,16
    800040c8:	00008067          	ret
        __asm__ volatile("mv a0, %0"::"r"((size_t)PCB::running->body));
    800040cc:	0287b703          	ld	a4,40(a5)
    800040d0:	00070513          	mv	a0,a4
        __asm__ volatile("mv a1, %0"::"r"((size_t)PCB::running->args));
    800040d4:	0307b783          	ld	a5,48(a5)
    800040d8:	00078593          	mv	a1,a5
        __asm__ volatile("csrw sepc, %0"::"r"(ra));
    800040dc:	00005797          	auipc	a5,0x5
    800040e0:	8b47b783          	ld	a5,-1868(a5) # 80008990 <_GLOBAL_OFFSET_TABLE_+0xa8>
    800040e4:	14179073          	csrw	sepc,a5
        __asm__ volatile ("sret");
    800040e8:	10200073          	sret
}
    800040ec:	fd5ff06f          	j	800040c0 <_ZN5Riscv10popSppSpieEv+0x28>

00000000800040f0 <_ZN5Riscv14setVirtualAddrEmmm>:

void Riscv::setVirtualAddr(size_t addr, size_t mask, size_t maskLeaf)
{
    800040f0:	fb010113          	addi	sp,sp,-80
    800040f4:	04113423          	sd	ra,72(sp)
    800040f8:	04813023          	sd	s0,64(sp)
    800040fc:	02913c23          	sd	s1,56(sp)
    80004100:	03213823          	sd	s2,48(sp)
    80004104:	03313423          	sd	s3,40(sp)
    80004108:	03413023          	sd	s4,32(sp)
    8000410c:	01513c23          	sd	s5,24(sp)
    80004110:	01613823          	sd	s6,16(sp)
    80004114:	01713423          	sd	s7,8(sp)
    80004118:	05010413          	addi	s0,sp,80
    8000411c:	00058993          	mv	s3,a1
    80004120:	00060a13          	mv	s4,a2
    size_t l2 = addr >> 30;
    80004124:	01e55b93          	srli	s7,a0,0x1e
    size_t l1 = (addr >> 21) & (0x1ff);
    80004128:	01555b13          	srli	s6,a0,0x15
    8000412c:	1ffb7b13          	andi	s6,s6,511
    size_t l0 = (addr >> 12) & (0x1ff);
    80004130:	00c55493          	srli	s1,a0,0xc
    80004134:	1ff4f913          	andi	s2,s1,511
    size_t pmt2Desc = ((size_t*)mainPMT)[l2];
    80004138:	003b9b93          	slli	s7,s7,0x3
    8000413c:	00005797          	auipc	a5,0x5
    80004140:	96c7b783          	ld	a5,-1684(a5) # 80008aa8 <_ZN5Riscv7mainPMTE>
    80004144:	017787b3          	add	a5,a5,s7
    80004148:	0007b503          	ld	a0,0(a5)
    void* pmt1 = nullptr;
    if(pmt2Desc == 0)
    8000414c:	06050663          	beqz	a0,800041b8 <_ZN5Riscv14setVirtualAddrEmmm+0xc8>
        size_t newDesc = (((size_t)pmt1 >> 12) << 10) | mask;
        ((size_t*)mainPMT)[l2] = newDesc;
    }
    else
    {
        pmt1 = (void*)((pmt2Desc >> 10) << 12);
    80004150:	00a55513          	srli	a0,a0,0xa
    80004154:	00c51513          	slli	a0,a0,0xc
    }
    size_t pmt1Desc = ((size_t*)pmt1)[l1];
    80004158:	003b1a93          	slli	s5,s6,0x3
    8000415c:	01550ab3          	add	s5,a0,s5
    80004160:	000ab503          	ld	a0,0(s5)
    void* pmt0 = nullptr;
    if(pmt1Desc == 0)
    80004164:	0a050063          	beqz	a0,80004204 <_ZN5Riscv14setVirtualAddrEmmm+0x114>
        size_t newDesc = (((size_t)pmt0 >> 12) << 10) | mask;
        ((size_t*)pmt1)[l1] = newDesc;
    }
    else
    {
        pmt0 = (void*)((pmt1Desc >> 10) << 12);
    80004168:	00a55513          	srli	a0,a0,0xa
    8000416c:	00c51513          	slli	a0,a0,0xc
    }

    size_t pmt0Desc = ((size_t*)pmt0)[l0];
    80004170:	00391913          	slli	s2,s2,0x3
    80004174:	01250533          	add	a0,a0,s2
    80004178:	00053783          	ld	a5,0(a0)
    if(pmt0Desc == 0)
    8000417c:	00079863          	bnez	a5,8000418c <_ZN5Riscv14setVirtualAddrEmmm+0x9c>
    {
        ((size_t*)pmt0)[l0] = ((addr >> 12) << 10) | maskLeaf;
    80004180:	00a49493          	slli	s1,s1,0xa
    80004184:	0144ea33          	or	s4,s1,s4
    80004188:	01453023          	sd	s4,0(a0)
    }
}
    8000418c:	04813083          	ld	ra,72(sp)
    80004190:	04013403          	ld	s0,64(sp)
    80004194:	03813483          	ld	s1,56(sp)
    80004198:	03013903          	ld	s2,48(sp)
    8000419c:	02813983          	ld	s3,40(sp)
    800041a0:	02013a03          	ld	s4,32(sp)
    800041a4:	01813a83          	ld	s5,24(sp)
    800041a8:	01013b03          	ld	s6,16(sp)
    800041ac:	00813b83          	ld	s7,8(sp)
    800041b0:	05010113          	addi	sp,sp,80
    800041b4:	00008067          	ret
        pmt1 = buddy_alloc(1);
    800041b8:	00100513          	li	a0,1
    800041bc:	fffff097          	auipc	ra,0xfffff
    800041c0:	dcc080e7          	jalr	-564(ra) # 80002f88 <_Z11buddy_allocm>
        for(int i = 0; i < NUM_OF_ENTRIES;i++)
    800041c4:	00000793          	li	a5,0
    800041c8:	1ff00713          	li	a4,511
    800041cc:	00f74c63          	blt	a4,a5,800041e4 <_ZN5Riscv14setVirtualAddrEmmm+0xf4>
            ((size_t*)pmt1)[i] = 0;
    800041d0:	00379713          	slli	a4,a5,0x3
    800041d4:	00e50733          	add	a4,a0,a4
    800041d8:	00073023          	sd	zero,0(a4)
        for(int i = 0; i < NUM_OF_ENTRIES;i++)
    800041dc:	0017879b          	addiw	a5,a5,1
    800041e0:	fe9ff06f          	j	800041c8 <_ZN5Riscv14setVirtualAddrEmmm+0xd8>
        size_t newDesc = (((size_t)pmt1 >> 12) << 10) | mask;
    800041e4:	00c55793          	srli	a5,a0,0xc
    800041e8:	00a79793          	slli	a5,a5,0xa
    800041ec:	0137e7b3          	or	a5,a5,s3
        ((size_t*)mainPMT)[l2] = newDesc;
    800041f0:	00005717          	auipc	a4,0x5
    800041f4:	8b873703          	ld	a4,-1864(a4) # 80008aa8 <_ZN5Riscv7mainPMTE>
    800041f8:	01770bb3          	add	s7,a4,s7
    800041fc:	00fbb023          	sd	a5,0(s7)
    80004200:	f59ff06f          	j	80004158 <_ZN5Riscv14setVirtualAddrEmmm+0x68>
        pmt0 = buddy_alloc(1);
    80004204:	00100513          	li	a0,1
    80004208:	fffff097          	auipc	ra,0xfffff
    8000420c:	d80080e7          	jalr	-640(ra) # 80002f88 <_Z11buddy_allocm>
        for(int i = 0; i < NUM_OF_ENTRIES;i++)
    80004210:	00000793          	li	a5,0
    80004214:	1ff00713          	li	a4,511
    80004218:	00f74c63          	blt	a4,a5,80004230 <_ZN5Riscv14setVirtualAddrEmmm+0x140>
            ((size_t*)pmt0)[i] = 0;
    8000421c:	00379713          	slli	a4,a5,0x3
    80004220:	00e50733          	add	a4,a0,a4
    80004224:	00073023          	sd	zero,0(a4)
        for(int i = 0; i < NUM_OF_ENTRIES;i++)
    80004228:	0017879b          	addiw	a5,a5,1
    8000422c:	fe9ff06f          	j	80004214 <_ZN5Riscv14setVirtualAddrEmmm+0x124>
        size_t newDesc = (((size_t)pmt0 >> 12) << 10) | mask;
    80004230:	00c55793          	srli	a5,a0,0xc
    80004234:	00a79793          	slli	a5,a5,0xa
    80004238:	0137e9b3          	or	s3,a5,s3
        ((size_t*)pmt1)[l1] = newDesc;
    8000423c:	013ab023          	sd	s3,0(s5)
    80004240:	f31ff06f          	j	80004170 <_ZN5Riscv14setVirtualAddrEmmm+0x80>

0000000080004244 <_ZN5Riscv19setVirtualAddrRangeEmmi>:
{
    80004244:	fd010113          	addi	sp,sp,-48
    80004248:	02113423          	sd	ra,40(sp)
    8000424c:	02813023          	sd	s0,32(sp)
    80004250:	00913c23          	sd	s1,24(sp)
    80004254:	01213823          	sd	s2,16(sp)
    80004258:	01313423          	sd	s3,8(sp)
    8000425c:	03010413          	addi	s0,sp,48
    80004260:	00050493          	mv	s1,a0
    80004264:	00058913          	mv	s2,a1
    80004268:	00060993          	mv	s3,a2
    for(size_t i = startAddr; i < endAddr; i+=BLOCK_NUM_OF_BYTES)
    8000426c:	0324f263          	bgeu	s1,s2,80004290 <_ZN5Riscv19setVirtualAddrRangeEmmi+0x4c>
        setVirtualAddr(i, VMEM_V_BIT, permission);
    80004270:	00098613          	mv	a2,s3
    80004274:	00100593          	li	a1,1
    80004278:	00048513          	mv	a0,s1
    8000427c:	00000097          	auipc	ra,0x0
    80004280:	e74080e7          	jalr	-396(ra) # 800040f0 <_ZN5Riscv14setVirtualAddrEmmm>
    for(size_t i = startAddr; i < endAddr; i+=BLOCK_NUM_OF_BYTES)
    80004284:	000017b7          	lui	a5,0x1
    80004288:	00f484b3          	add	s1,s1,a5
    8000428c:	fe1ff06f          	j	8000426c <_ZN5Riscv19setVirtualAddrRangeEmmi+0x28>
}
    80004290:	02813083          	ld	ra,40(sp)
    80004294:	02013403          	ld	s0,32(sp)
    80004298:	01813483          	ld	s1,24(sp)
    8000429c:	01013903          	ld	s2,16(sp)
    800042a0:	00813983          	ld	s3,8(sp)
    800042a4:	03010113          	addi	sp,sp,48
    800042a8:	00008067          	ret

00000000800042ac <_ZN5Riscv10initSystemEv>:
{
    800042ac:	fc010113          	addi	sp,sp,-64
    800042b0:	02113c23          	sd	ra,56(sp)
    800042b4:	02813823          	sd	s0,48(sp)
    800042b8:	02913423          	sd	s1,40(sp)
    800042bc:	03213023          	sd	s2,32(sp)
    800042c0:	01313c23          	sd	s3,24(sp)
    800042c4:	01413823          	sd	s4,16(sp)
    800042c8:	01513423          	sd	s5,8(sp)
    800042cc:	01613023          	sd	s6,0(sp)
    800042d0:	04010413          	addi	s0,sp,64
    w_stvec((uint64)&Riscv::supervisorTrap);
    800042d4:	00004797          	auipc	a5,0x4
    800042d8:	63c7b783          	ld	a5,1596(a5) # 80008910 <_GLOBAL_OFFSET_TABLE_+0x28>
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    800042dc:	10579073          	csrw	stvec,a5
    size_t heapStartBlock = getBlockAddr((size_t)HEAP_START_ADDR);
    800042e0:	00004917          	auipc	s2,0x4
    800042e4:	62093903          	ld	s2,1568(s2) # 80008900 <_GLOBAL_OFFSET_TABLE_+0x18>
    800042e8:	00093503          	ld	a0,0(s2)
    800042ec:	fffff097          	auipc	ra,0xfffff
    800042f0:	aa4080e7          	jalr	-1372(ra) # 80002d90 <_Z12getBlockAddrm>
    void* newStartAddr = (void*)(heapStartBlock + numOfBlocks*BLOCK_NUM_OF_BYTES);
    800042f4:	010017b7          	lui	a5,0x1001
    800042f8:	00f504b3          	add	s1,a0,a5
    MemoryAllocator::initMemory(newStartAddr);
    800042fc:	00048513          	mv	a0,s1
    80004300:	00000097          	auipc	ra,0x0
    80004304:	65c080e7          	jalr	1628(ra) # 8000495c <_ZN15MemoryAllocator10initMemoryEPv>
    kmem_init((void*)HEAP_START_ADDR, numOfBlocks);
    80004308:	000015b7          	lui	a1,0x1
    8000430c:	00158593          	addi	a1,a1,1 # 1001 <_entry-0x7fffefff>
    80004310:	00093503          	ld	a0,0(s2)
    80004314:	ffffe097          	auipc	ra,0xffffe
    80004318:	aac080e7          	jalr	-1364(ra) # 80001dc0 <_Z9kmem_initPvi>
    pcbCache = kmem_cache_create("Cache of PCBs", sizeof(PCB), nullptr, nullptr);
    8000431c:	00000693          	li	a3,0
    80004320:	00000613          	li	a2,0
    80004324:	06000593          	li	a1,96
    80004328:	00004517          	auipc	a0,0x4
    8000432c:	06850513          	addi	a0,a0,104 # 80008390 <CONSOLE_STATUS+0x380>
    80004330:	ffffe097          	auipc	ra,0xffffe
    80004334:	9ec080e7          	jalr	-1556(ra) # 80001d1c <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004338:	00004917          	auipc	s2,0x4
    8000433c:	76890913          	addi	s2,s2,1896 # 80008aa0 <_ZN5Riscv12finishSystemE>
    80004340:	00a93823          	sd	a0,16(s2)
    semaphoreCache = kmem_cache_create("Cache of KSemaphore", sizeof(KSemaphore), nullptr, nullptr);
    80004344:	00000693          	li	a3,0
    80004348:	00000613          	li	a2,0
    8000434c:	01800593          	li	a1,24
    80004350:	00004517          	auipc	a0,0x4
    80004354:	05050513          	addi	a0,a0,80 # 800083a0 <CONSOLE_STATUS+0x390>
    80004358:	ffffe097          	auipc	ra,0xffffe
    8000435c:	9c4080e7          	jalr	-1596(ra) # 80001d1c <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004360:	00a93c23          	sd	a0,24(s2)
    PCB::initialize();
    80004364:	ffffe097          	auipc	ra,0xffffe
    80004368:	624080e7          	jalr	1572(ra) # 80002988 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    8000436c:	fffff097          	auipc	ra,0xfffff
    80004370:	0d0080e7          	jalr	208(ra) # 8000343c <_ZN8KConsole10initializeEv>
    mainPMT = buddy_alloc(1);
    80004374:	00100513          	li	a0,1
    80004378:	fffff097          	auipc	ra,0xfffff
    8000437c:	c10080e7          	jalr	-1008(ra) # 80002f88 <_Z11buddy_allocm>
    80004380:	00a93423          	sd	a0,8(s2)
    for(size_t i = 0; i < NUM_OF_ENTRIES;i++)
    80004384:	00000793          	li	a5,0
    80004388:	1ff00713          	li	a4,511
    8000438c:	02f76063          	bltu	a4,a5,800043ac <_ZN5Riscv10initSystemEv+0x100>
        ((size_t*)mainPMT)[i] = 0;
    80004390:	00379693          	slli	a3,a5,0x3
    80004394:	00004717          	auipc	a4,0x4
    80004398:	71473703          	ld	a4,1812(a4) # 80008aa8 <_ZN5Riscv7mainPMTE>
    8000439c:	00d70733          	add	a4,a4,a3
    800043a0:	00073023          	sd	zero,0(a4)
    for(size_t i = 0; i < NUM_OF_ENTRIES;i++)
    800043a4:	00178793          	addi	a5,a5,1 # 1001001 <_entry-0x7effefff>
    800043a8:	fe1ff06f          	j	80004388 <_ZN5Riscv10initSystemEv+0xdc>
    KConsole::trapPrintStringInt("main PMT ", (size_t)mainPMT,16);
    800043ac:	00004917          	auipc	s2,0x4
    800043b0:	6f490913          	addi	s2,s2,1780 # 80008aa0 <_ZN5Riscv12finishSystemE>
    800043b4:	01000613          	li	a2,16
    800043b8:	00893583          	ld	a1,8(s2)
    800043bc:	00004517          	auipc	a0,0x4
    800043c0:	ffc50513          	addi	a0,a0,-4 # 800083b8 <CONSOLE_STATUS+0x3a8>
    800043c4:	fffff097          	auipc	ra,0xfffff
    800043c8:	63c080e7          	jalr	1596(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    uint64 kTextStart = (uint64)(&kernelTextStart);
    800043cc:	00004b17          	auipc	s6,0x4
    800043d0:	54cb3b03          	ld	s6,1356(s6) # 80008918 <_GLOBAL_OFFSET_TABLE_+0x30>
    uint64 kDataStart = (uint64)(&kernelDataStart);
    800043d4:	00004a97          	auipc	s5,0x4
    800043d8:	54caba83          	ld	s5,1356(s5) # 80008920 <_GLOBAL_OFFSET_TABLE_+0x38>
    uint64 uTextStart = (uint64)(&userTextStart);
    800043dc:	00004997          	auipc	s3,0x4
    800043e0:	5949b983          	ld	s3,1428(s3) # 80008970 <_GLOBAL_OFFSET_TABLE_+0x88>
    uint64 uDataStart = (uint64)(&userDataStart);
    800043e4:	00004a17          	auipc	s4,0x4
    800043e8:	5b4a3a03          	ld	s4,1460(s4) # 80008998 <_GLOBAL_OFFSET_TABLE_+0xb0>
    setVirtualAddrRange(programStartAddr, kTextStart, KERNEL_RX); // before kernel instructions
    800043ec:	00b00613          	li	a2,11
    800043f0:	000b0593          	mv	a1,s6
    800043f4:	00004517          	auipc	a0,0x4
    800043f8:	4c453503          	ld	a0,1220(a0) # 800088b8 <_ZN5Riscv16programStartAddrE>
    800043fc:	00000097          	auipc	ra,0x0
    80004400:	e48080e7          	jalr	-440(ra) # 80004244 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange(kTextStart, kDataStart,KERNEL_RX); // kernel instructions
    80004404:	00b00613          	li	a2,11
    80004408:	000a8593          	mv	a1,s5
    8000440c:	000b0513          	mv	a0,s6
    80004410:	00000097          	auipc	ra,0x0
    80004414:	e34080e7          	jalr	-460(ra) # 80004244 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)(&kernelDataStart), uTextStart, KERNEL_RW); // kernel data
    80004418:	00700613          	li	a2,7
    8000441c:	00098593          	mv	a1,s3
    80004420:	000a8513          	mv	a0,s5
    80004424:	00000097          	auipc	ra,0x0
    80004428:	e20080e7          	jalr	-480(ra) # 80004244 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)(&userTextStart), uDataStart, USER_RX); //user instructions
    8000442c:	01b00613          	li	a2,27
    80004430:	000a0593          	mv	a1,s4
    80004434:	00098513          	mv	a0,s3
    80004438:	00000097          	auipc	ra,0x0
    8000443c:	e0c080e7          	jalr	-500(ra) # 80004244 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)(&userDataStart), (size_t)HEAP_START_ADDR, USER_RW); // user data
    80004440:	00004997          	auipc	s3,0x4
    80004444:	4c09b983          	ld	s3,1216(s3) # 80008900 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004448:	01700613          	li	a2,23
    8000444c:	0009b583          	ld	a1,0(s3)
    80004450:	000a0513          	mv	a0,s4
    80004454:	00000097          	auipc	ra,0x0
    80004458:	df0080e7          	jalr	-528(ra) # 80004244 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)HEAP_START_ADDR, (size_t)newStartAddr, KERNEL_RW); // kernel heap data
    8000445c:	00700613          	li	a2,7
    80004460:	00048593          	mv	a1,s1
    80004464:	0009b503          	ld	a0,0(s3)
    80004468:	00000097          	auipc	ra,0x0
    8000446c:	ddc080e7          	jalr	-548(ra) # 80004244 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddrRange((size_t)newStartAddr, (size_t)HEAP_END_ADDR + 1,USER_RW); // user heap data
    80004470:	00004797          	auipc	a5,0x4
    80004474:	5107b783          	ld	a5,1296(a5) # 80008980 <_GLOBAL_OFFSET_TABLE_+0x98>
    80004478:	0007b583          	ld	a1,0(a5)
    8000447c:	01700613          	li	a2,23
    80004480:	00158593          	addi	a1,a1,1
    80004484:	00048513          	mv	a0,s1
    80004488:	00000097          	auipc	ra,0x0
    8000448c:	dbc080e7          	jalr	-580(ra) # 80004244 <_ZN5Riscv19setVirtualAddrRangeEmmi>
    setVirtualAddr((size_t)CONSOLE_RX_DATA,0x1,0xf);
    80004490:	00f00613          	li	a2,15
    80004494:	00100593          	li	a1,1
    80004498:	00004797          	auipc	a5,0x4
    8000449c:	4587b783          	ld	a5,1112(a5) # 800088f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800044a0:	0007b503          	ld	a0,0(a5)
    800044a4:	00000097          	auipc	ra,0x0
    800044a8:	c4c080e7          	jalr	-948(ra) # 800040f0 <_ZN5Riscv14setVirtualAddrEmmm>
    setVirtualAddr((size_t)CONSOLE_TX_DATA,0x1,0xf);
    800044ac:	00f00613          	li	a2,15
    800044b0:	00100593          	li	a1,1
    800044b4:	00004797          	auipc	a5,0x4
    800044b8:	47c7b783          	ld	a5,1148(a5) # 80008930 <_GLOBAL_OFFSET_TABLE_+0x48>
    800044bc:	0007b503          	ld	a0,0(a5)
    800044c0:	00000097          	auipc	ra,0x0
    800044c4:	c30080e7          	jalr	-976(ra) # 800040f0 <_ZN5Riscv14setVirtualAddrEmmm>
    setVirtualAddr((size_t)CONSOLE_STATUS,0x1,0xf);
    800044c8:	00f00613          	li	a2,15
    800044cc:	00100593          	li	a1,1
    800044d0:	00004797          	auipc	a5,0x4
    800044d4:	4287b783          	ld	a5,1064(a5) # 800088f8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800044d8:	0007b503          	ld	a0,0(a5)
    800044dc:	00000097          	auipc	ra,0x0
    800044e0:	c14080e7          	jalr	-1004(ra) # 800040f0 <_ZN5Riscv14setVirtualAddrEmmm>
    setVirtualAddr(0xc201004,0x1,0xf);
    800044e4:	00f00613          	li	a2,15
    800044e8:	00100593          	li	a1,1
    800044ec:	0c201537          	lui	a0,0xc201
    800044f0:	00450513          	addi	a0,a0,4 # c201004 <_entry-0x73dfeffc>
    800044f4:	00000097          	auipc	ra,0x0
    800044f8:	bfc080e7          	jalr	-1028(ra) # 800040f0 <_ZN5Riscv14setVirtualAddrEmmm>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    800044fc:	000407b7          	lui	a5,0x40
    80004500:	1007a073          	csrs	sstatus,a5
    size_t satp = ((size_t)1 << 63) | ((size_t)mainPMT >> 12);
    80004504:	00893783          	ld	a5,8(s2)
    80004508:	00c7d793          	srli	a5,a5,0xc
    8000450c:	fff00713          	li	a4,-1
    80004510:	03f71713          	slli	a4,a4,0x3f
    80004514:	00e7e7b3          	or	a5,a5,a4
    __asm__ volatile("csrw satp, %0" : :"r"(satp));
    80004518:	18079073          	csrw	satp,a5
}
    8000451c:	03813083          	ld	ra,56(sp)
    80004520:	03013403          	ld	s0,48(sp)
    80004524:	02813483          	ld	s1,40(sp)
    80004528:	02013903          	ld	s2,32(sp)
    8000452c:	01813983          	ld	s3,24(sp)
    80004530:	01013a03          	ld	s4,16(sp)
    80004534:	00813a83          	ld	s5,8(sp)
    80004538:	00013b03          	ld	s6,0(sp)
    8000453c:	04010113          	addi	sp,sp,64
    80004540:	00008067          	ret

0000000080004544 <_ZN5Riscv10kernelMainEv>:
    if(kernelMainCalled) return;
    80004544:	00004797          	auipc	a5,0x4
    80004548:	57c7c783          	lbu	a5,1404(a5) # 80008ac0 <_ZN5Riscv16kernelMainCalledE>
    8000454c:	00078463          	beqz	a5,80004554 <_ZN5Riscv10kernelMainEv+0x10>
    80004550:	00008067          	ret
{
    80004554:	ff010113          	addi	sp,sp,-16
    80004558:	00113423          	sd	ra,8(sp)
    8000455c:	00813023          	sd	s0,0(sp)
    80004560:	01010413          	addi	s0,sp,16
    kernelMainCalled = true;
    80004564:	00100793          	li	a5,1
    80004568:	00004717          	auipc	a4,0x4
    8000456c:	54f70c23          	sb	a5,1368(a4) # 80008ac0 <_ZN5Riscv16kernelMainCalledE>
    initSystem();
    80004570:	00000097          	auipc	ra,0x0
    80004574:	d3c080e7          	jalr	-708(ra) # 800042ac <_ZN5Riscv10initSystemEv>
    testOS2();
    80004578:	00001097          	auipc	ra,0x1
    8000457c:	e6c080e7          	jalr	-404(ra) # 800053e4 <_Z7testOS2v>
    endSystem();
    80004580:	00000097          	auipc	ra,0x0
    80004584:	a84080e7          	jalr	-1404(ra) # 80004004 <_ZN5Riscv9endSystemEv>
}
    80004588:	00813083          	ld	ra,8(sp)
    8000458c:	00013403          	ld	s0,0(sp)
    80004590:	01010113          	addi	sp,sp,16
    80004594:	00008067          	ret

0000000080004598 <_ZN5Riscv14addVirtualAddrEm>:

void Riscv::addVirtualAddr(size_t addr)
{
    80004598:	ff010113          	addi	sp,sp,-16
    8000459c:	00113423          	sd	ra,8(sp)
    800045a0:	00813023          	sd	s0,0(sp)
    800045a4:	01010413          	addi	s0,sp,16
    setVirtualAddr(addr, 0x1, 0xf);
    800045a8:	00f00613          	li	a2,15
    800045ac:	00100593          	li	a1,1
    800045b0:	00000097          	auipc	ra,0x0
    800045b4:	b40080e7          	jalr	-1216(ra) # 800040f0 <_ZN5Riscv14setVirtualAddrEmmm>
}
    800045b8:	00813083          	ld	ra,8(sp)
    800045bc:	00013403          	ld	s0,0(sp)
    800045c0:	01010113          	addi	sp,sp,16
    800045c4:	00008067          	ret

00000000800045c8 <_ZN5Riscv19addVirtualAddrInstrEm>:

void Riscv::addVirtualAddrInstr(size_t addr)
{
    800045c8:	ff010113          	addi	sp,sp,-16
    800045cc:	00113423          	sd	ra,8(sp)
    800045d0:	00813023          	sd	s0,0(sp)
    800045d4:	01010413          	addi	s0,sp,16
    setVirtualAddr(addr, 0x1, 0xf);
    800045d8:	00f00613          	li	a2,15
    800045dc:	00100593          	li	a1,1
    800045e0:	00000097          	auipc	ra,0x0
    800045e4:	b10080e7          	jalr	-1264(ra) # 800040f0 <_ZN5Riscv14setVirtualAddrEmmm>
}
    800045e8:	00813083          	ld	ra,8(sp)
    800045ec:	00013403          	ld	s0,0(sp)
    800045f0:	01010113          	addi	sp,sp,16
    800045f4:	00008067          	ret

00000000800045f8 <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    800045f8:	ff010113          	addi	sp,sp,-16
    800045fc:	00813423          	sd	s0,8(sp)
    80004600:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    80004604:	00200793          	li	a5,2
    80004608:	1047b073          	csrc	sie,a5
}
    8000460c:	00813403          	ld	s0,8(sp)
    80004610:	01010113          	addi	sp,sp,16
    80004614:	00008067          	ret

0000000080004618 <_ZN5Riscv13w_a0_sscratchEv>:

void Riscv::w_a0_sscratch()
{
    80004618:	ff010113          	addi	sp,sp,-16
    8000461c:	00813423          	sd	s0,8(sp)
    80004620:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    80004624:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    80004628:	00004717          	auipc	a4,0x4
    8000462c:	35073703          	ld	a4,848(a4) # 80008978 <_GLOBAL_OFFSET_TABLE_+0x90>
    80004630:	00073703          	ld	a4,0(a4)
    80004634:	01073703          	ld	a4,16(a4)
    80004638:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    8000463c:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80004640:	00078593          	mv	a1,a5
}
    80004644:	00813403          	ld	s0,8(sp)
    80004648:	01010113          	addi	sp,sp,16
    8000464c:	00008067          	ret

0000000080004650 <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    80004650:	ff010113          	addi	sp,sp,-16
    80004654:	00813423          	sd	s0,8(sp)
    80004658:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    8000465c:	00004797          	auipc	a5,0x4
    80004660:	31c7b783          	ld	a5,796(a5) # 80008978 <_GLOBAL_OFFSET_TABLE_+0x90>
    80004664:	0007b783          	ld	a5,0(a5)
    80004668:	0007c783          	lbu	a5,0(a5)
    8000466c:	00078c63          	beqz	a5,80004684 <_ZN5Riscv14changePrivModeEv+0x34>
    80004670:	10000793          	li	a5,256
    80004674:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    80004678:	00813403          	ld	s0,8(sp)
    8000467c:	01010113          	addi	sp,sp,16
    80004680:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80004684:	10000793          	li	a5,256
    80004688:	1007b073          	csrc	sstatus,a5
    8000468c:	fedff06f          	j	80004678 <_ZN5Riscv14changePrivModeEv+0x28>

0000000080004690 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80004690:	f9010113          	addi	sp,sp,-112
    80004694:	06113423          	sd	ra,104(sp)
    80004698:	06813023          	sd	s0,96(sp)
    8000469c:	04913c23          	sd	s1,88(sp)
    800046a0:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    800046a4:	00070713          	mv	a4,a4
    800046a8:	00004797          	auipc	a5,0x4
    800046ac:	2f87b783          	ld	a5,760(a5) # 800089a0 <_GLOBAL_OFFSET_TABLE_+0xb8>
    800046b0:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    800046b4:	00004797          	auipc	a5,0x4
    800046b8:	2c47b783          	ld	a5,708(a5) # 80008978 <_GLOBAL_OFFSET_TABLE_+0x90>
    800046bc:	0007b783          	ld	a5,0(a5)
    800046c0:	14002773          	csrr	a4,sscratch
    800046c4:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    800046c8:	142027f3          	csrr	a5,scause
    800046cc:	faf43c23          	sd	a5,-72(s0)
    return scause;
    800046d0:	fb843783          	ld	a5,-72(s0)

    static const size_t storePF = 15;
    static const size_t loadPF = 13;
    static const size_t instrPF = 12;

    switch(scause)
    800046d4:	00f00713          	li	a4,15
    800046d8:	02f76863          	bltu	a4,a5,80004708 <_ZN5Riscv20handleSupervisorTrapEv+0x78>
    800046dc:	00200713          	li	a4,2
    800046e0:	10e7e863          	bltu	a5,a4,800047f0 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
    800046e4:	00f00713          	li	a4,15
    800046e8:	10f76463          	bltu	a4,a5,800047f0 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
    800046ec:	00279793          	slli	a5,a5,0x2
    800046f0:	00004717          	auipc	a4,0x4
    800046f4:	cd470713          	addi	a4,a4,-812 # 800083c4 <CONSOLE_STATUS+0x3b4>
    800046f8:	00e787b3          	add	a5,a5,a4
    800046fc:	0007a783          	lw	a5,0(a5)
    80004700:	00e787b3          	add	a5,a5,a4
    80004704:	00078067          	jr	a5
    80004708:	fff00713          	li	a4,-1
    8000470c:	03f71713          	slli	a4,a4,0x3f
    80004710:	00170713          	addi	a4,a4,1
    80004714:	04e78a63          	beq	a5,a4,80004768 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
    80004718:	fff00713          	li	a4,-1
    8000471c:	03f71713          	slli	a4,a4,0x3f
    80004720:	00970713          	addi	a4,a4,9
    80004724:	0ce79663          	bne	a5,a4,800047f0 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            changePrivMode();
            break;
        }
        case hwInterrupt:
        {
            KConsole::getCharactersFromConsole();
    80004728:	fffff097          	auipc	ra,0xfffff
    8000472c:	e6c080e7          	jalr	-404(ra) # 80003594 <_ZN8KConsole24getCharactersFromConsoleEv>
            plic_complete(plic_claim());
    80004730:	00002097          	auipc	ra,0x2
    80004734:	9c4080e7          	jalr	-1596(ra) # 800060f4 <plic_claim>
    80004738:	00002097          	auipc	ra,0x2
    8000473c:	9f4080e7          	jalr	-1548(ra) # 8000612c <plic_complete>
            break;
    80004740:	0b00006f          	j	800047f0 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    80004744:	ffffe097          	auipc	ra,0xffffe
    80004748:	390080e7          	jalr	912(ra) # 80002ad4 <_ZN3PCB17threadExitHandlerEv>
            break;
    8000474c:	0a40006f          	j	800047f0 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    80004750:	ffffe097          	auipc	ra,0xffffe
    80004754:	384080e7          	jalr	900(ra) # 80002ad4 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004758:	0980006f          	j	800047f0 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    8000475c:	ffffe097          	auipc	ra,0xffffe
    80004760:	378080e7          	jalr	888(ra) # 80002ad4 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004764:	08c0006f          	j	800047f0 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80004768:	141027f3          	csrr	a5,sepc
    8000476c:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80004770:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80004774:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80004778:	100027f3          	csrr	a5,sstatus
    8000477c:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80004780:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80004784:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80004788:	00200793          	li	a5,2
    8000478c:	1447b073          	csrc	sip,a5
            totalTime++;
    80004790:	00004717          	auipc	a4,0x4
    80004794:	31070713          	addi	a4,a4,784 # 80008aa0 <_ZN5Riscv12finishSystemE>
    80004798:	02873783          	ld	a5,40(a4)
    8000479c:	00178793          	addi	a5,a5,1
    800047a0:	02f73423          	sd	a5,40(a4)
            PCB::timeSliceCounter++;
    800047a4:	00004497          	auipc	s1,0x4
    800047a8:	1944b483          	ld	s1,404(s1) # 80008938 <_GLOBAL_OFFSET_TABLE_+0x50>
    800047ac:	0004b783          	ld	a5,0(s1)
    800047b0:	00178793          	addi	a5,a5,1
    800047b4:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    800047b8:	fffff097          	auipc	ra,0xfffff
    800047bc:	318080e7          	jalr	792(ra) # 80003ad0 <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    800047c0:	00004797          	auipc	a5,0x4
    800047c4:	1b87b783          	ld	a5,440(a5) # 80008978 <_GLOBAL_OFFSET_TABLE_+0x90>
    800047c8:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    800047cc:	0187b783          	ld	a5,24(a5)
    800047d0:	0004b703          	ld	a4,0(s1)
    800047d4:	02f77863          	bgeu	a4,a5,80004804 <_ZN5Riscv20handleSupervisorTrapEv+0x174>
            Riscv::w_sstatus(sstatus);
    800047d8:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    800047dc:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    800047e0:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800047e4:	14179073          	csrw	sepc,a5
            changePrivMode();
    800047e8:	00000097          	auipc	ra,0x0
    800047ec:	e68080e7          	jalr	-408(ra) # 80004650 <_ZN5Riscv14changePrivModeEv>
            Riscv::w_sepc(sepc);
            changePrivMode();
            break;
        }
    }
}
    800047f0:	06813083          	ld	ra,104(sp)
    800047f4:	06013403          	ld	s0,96(sp)
    800047f8:	05813483          	ld	s1,88(sp)
    800047fc:	07010113          	addi	sp,sp,112
    80004800:	00008067          	ret
                PCB::timeSliceCounter = 0;
    80004804:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    80004808:	ffffe097          	auipc	ra,0xffffe
    8000480c:	05c080e7          	jalr	92(ra) # 80002864 <_ZN3PCB8dispatchEv>
    80004810:	fc9ff06f          	j	800047d8 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            PCB::threadExitHandler();
    80004814:	ffffe097          	auipc	ra,0xffffe
    80004818:	2c0080e7          	jalr	704(ra) # 80002ad4 <_ZN3PCB17threadExitHandlerEv>
            break;
    8000481c:	fd5ff06f          	j	800047f0 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    80004820:	ffffe097          	auipc	ra,0xffffe
    80004824:	2b4080e7          	jalr	692(ra) # 80002ad4 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004828:	fc9ff06f          	j	800047f0 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            PCB::threadExitHandler();
    8000482c:	ffffe097          	auipc	ra,0xffffe
    80004830:	2a8080e7          	jalr	680(ra) # 80002ad4 <_ZN3PCB17threadExitHandlerEv>
            break;
    80004834:	fbdff06f          	j	800047f0 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    80004838:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    8000483c:	14102773          	csrr	a4,sepc
    80004840:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    80004844:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    80004848:	00470713          	addi	a4,a4,4
    8000484c:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80004850:	10002773          	csrr	a4,sstatus
    80004854:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    80004858:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    8000485c:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80004860:	04300713          	li	a4,67
    80004864:	02f76463          	bltu	a4,a5,8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
    80004868:	00279793          	slli	a5,a5,0x2
    8000486c:	00004717          	auipc	a4,0x4
    80004870:	b9870713          	addi	a4,a4,-1128 # 80008404 <CONSOLE_STATUS+0x3f4>
    80004874:	00e787b3          	add	a5,a5,a4
    80004878:	0007a783          	lw	a5,0(a5)
    8000487c:	00e787b3          	add	a5,a5,a4
    80004880:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    80004884:	00000097          	auipc	ra,0x0
    80004888:	4f0080e7          	jalr	1264(ra) # 80004d74 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    8000488c:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80004890:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80004894:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    80004898:	14179073          	csrw	sepc,a5
            changePrivMode();
    8000489c:	00000097          	auipc	ra,0x0
    800048a0:	db4080e7          	jalr	-588(ra) # 80004650 <_ZN5Riscv14changePrivModeEv>
}
    800048a4:	f4dff06f          	j	800047f0 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
                    MemoryAllocator::memFreeHandler();
    800048a8:	00000097          	auipc	ra,0x0
    800048ac:	53c080e7          	jalr	1340(ra) # 80004de4 <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    800048b0:	fddff06f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadMakePCBHandler();
    800048b4:	ffffe097          	auipc	ra,0xffffe
    800048b8:	3e8080e7          	jalr	1000(ra) # 80002c9c <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    800048bc:	fd1ff06f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadCreateHandler();
    800048c0:	ffffe097          	auipc	ra,0xffffe
    800048c4:	2f4080e7          	jalr	756(ra) # 80002bb4 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    800048c8:	fc5ff06f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadStartHandler();
    800048cc:	ffffe097          	auipc	ra,0xffffe
    800048d0:	38c080e7          	jalr	908(ra) # 80002c58 <_ZN3PCB18threadStartHandlerEv>
                    break;
    800048d4:	fb9ff06f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadDispatchHandler();
    800048d8:	ffffe097          	auipc	ra,0xffffe
    800048dc:	248080e7          	jalr	584(ra) # 80002b20 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    800048e0:	fadff06f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadExitHandler();
    800048e4:	ffffe097          	auipc	ra,0xffffe
    800048e8:	1f0080e7          	jalr	496(ra) # 80002ad4 <_ZN3PCB17threadExitHandlerEv>
                    break;
    800048ec:	fa1ff06f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadSleepHandler();
    800048f0:	ffffe097          	auipc	ra,0xffffe
    800048f4:	260080e7          	jalr	608(ra) # 80002b50 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    800048f8:	f95ff06f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    PCB::threadDelPCBHandler();
    800048fc:	ffffe097          	auipc	ra,0xffffe
    80004900:	438080e7          	jalr	1080(ra) # 80002d34 <_ZN3PCB19threadDelPCBHandlerEv>
                    break;
    80004904:	f89ff06f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semOpenHandler();
    80004908:	00001097          	auipc	ra,0x1
    8000490c:	df0080e7          	jalr	-528(ra) # 800056f8 <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    80004910:	f7dff06f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semWaitHandler();
    80004914:	00001097          	auipc	ra,0x1
    80004918:	e98080e7          	jalr	-360(ra) # 800057ac <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    8000491c:	f71ff06f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semSignalHandler();
    80004920:	00001097          	auipc	ra,0x1
    80004924:	ee0080e7          	jalr	-288(ra) # 80005800 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    80004928:	f65ff06f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KSemaphore::semCloseHandler();
    8000492c:	00001097          	auipc	ra,0x1
    80004930:	f18080e7          	jalr	-232(ra) # 80005844 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    80004934:	f59ff06f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KConsole::getcHandler();
    80004938:	fffff097          	auipc	ra,0xfffff
    8000493c:	e60080e7          	jalr	-416(ra) # 80003798 <_ZN8KConsole11getcHandlerEv>
                    break;
    80004940:	f4dff06f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KConsole::putcHandler();
    80004944:	fffff097          	auipc	ra,0xfffff
    80004948:	e24080e7          	jalr	-476(ra) # 80003768 <_ZN8KConsole11putcHandlerEv>
                    break;
    8000494c:	f41ff06f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    KConsole::getCharHandler();
    80004950:	fffff097          	auipc	ra,0xfffff
    80004954:	fa4080e7          	jalr	-92(ra) # 800038f4 <_ZN8KConsole14getCharHandlerEv>
                    break;
    80004958:	f35ff06f          	j	8000488c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>

000000008000495c <_ZN15MemoryAllocator10initMemoryEPv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory(void* startAddr)
{
    8000495c:	ff010113          	addi	sp,sp,-16
    80004960:	00813423          	sd	s0,8(sp)
    80004964:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    80004968:	00004717          	auipc	a4,0x4
    8000496c:	16872703          	lw	a4,360(a4) # 80008ad0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004970:	00100793          	li	a5,1
    80004974:	02f70c63          	beq	a4,a5,800049ac <_ZN15MemoryAllocator10initMemoryEPv+0x50>
        return;
    memoryInitiliaized = 1;
    80004978:	00004797          	auipc	a5,0x4
    8000497c:	15878793          	addi	a5,a5,344 # 80008ad0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004980:	00100713          	li	a4,1
    80004984:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    80004988:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)startAddr;
    8000498c:	00a7b823          	sd	a0,16(a5)
    headFree->next = 0;
    80004990:	00053423          	sd	zero,8(a0)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)startAddr  + 1 - sizeof(BlockHeader));
    80004994:	00004797          	auipc	a5,0x4
    80004998:	fec7b783          	ld	a5,-20(a5) # 80008980 <_GLOBAL_OFFSET_TABLE_+0x98>
    8000499c:	0007b783          	ld	a5,0(a5)
    800049a0:	40a787b3          	sub	a5,a5,a0
    800049a4:	ff178793          	addi	a5,a5,-15
    800049a8:	00f53023          	sd	a5,0(a0)
}
    800049ac:	00813403          	ld	s0,8(sp)
    800049b0:	01010113          	addi	sp,sp,16
    800049b4:	00008067          	ret

00000000800049b8 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>:

void MemoryAllocator::insertAllFragment(void *addr, size_t size, void* nxtAddr)
{
    800049b8:	ff010113          	addi	sp,sp,-16
    800049bc:	00813423          	sd	s0,8(sp)
    800049c0:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    800049c4:	00004797          	auipc	a5,0x4
    800049c8:	10c7a783          	lw	a5,268(a5) # 80008ad0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    800049cc:	02078a63          	beqz	a5,80004a00 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        return;
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    800049d0:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    800049d4:	00b53023          	sd	a1,0(a0)
    if(headAllocated == 0)
    800049d8:	00004797          	auipc	a5,0x4
    800049dc:	1007b783          	ld	a5,256(a5) # 80008ad8 <_ZN15MemoryAllocator13headAllocatedE>
    800049e0:	02078663          	beqz	a5,80004a0c <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x54>
    {
        headAllocated = newAllocated;
    }
    else if(nxtAddr <= HEAP_END_ADDR)
    800049e4:	00004717          	auipc	a4,0x4
    800049e8:	f9c73703          	ld	a4,-100(a4) # 80008980 <_GLOBAL_OFFSET_TABLE_+0x98>
    800049ec:	00073703          	ld	a4,0(a4)
    800049f0:	02c76463          	bltu	a4,a2,80004a18 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>
    {
        BlockHeader * allFrag = (BlockHeader*)nxtAddr;
        newAllocated->next = allFrag->next;
    800049f4:	00863783          	ld	a5,8(a2)
    800049f8:	00f53423          	sd	a5,8(a0)
        allFrag->next = newAllocated;
    800049fc:	00a63423          	sd	a0,8(a2)
    else
    {
        newAllocated->next = headAllocated;
        headAllocated = newAllocated;
    }
}
    80004a00:	00813403          	ld	s0,8(sp)
    80004a04:	01010113          	addi	sp,sp,16
    80004a08:	00008067          	ret
        headAllocated = newAllocated;
    80004a0c:	00004797          	auipc	a5,0x4
    80004a10:	0ca7b623          	sd	a0,204(a5) # 80008ad8 <_ZN15MemoryAllocator13headAllocatedE>
    80004a14:	fedff06f          	j	80004a00 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>
        newAllocated->next = headAllocated;
    80004a18:	00f53423          	sd	a5,8(a0)
        headAllocated = newAllocated;
    80004a1c:	00004797          	auipc	a5,0x4
    80004a20:	0aa7be23          	sd	a0,188(a5) # 80008ad8 <_ZN15MemoryAllocator13headAllocatedE>
    80004a24:	fddff06f          	j	80004a00 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x48>

0000000080004a28 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80004a28:	ff010113          	addi	sp,sp,-16
    80004a2c:	00813423          	sd	s0,8(sp)
    80004a30:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    80004a34:	00004797          	auipc	a5,0x4
    80004a38:	09c7a783          	lw	a5,156(a5) # 80008ad0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004a3c:	02078c63          	beqz	a5,80004a74 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80004a40:	00004797          	auipc	a5,0x4
    80004a44:	0987b783          	ld	a5,152(a5) # 80008ad8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004a48:	00053423          	sd	zero,8(a0)
    newAllocated->size = size;
    80004a4c:	00b53023          	sd	a1,0(a0)
    BlockHeader* prev = 0;
    80004a50:	00000713          	li	a4,0
    while(curr != 0)
    80004a54:	00078c63          	beqz	a5,80004a6c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x44>
    {
        if((void*)curr > addr)
    80004a58:	00f56863          	bltu	a0,a5,80004a68 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x40>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80004a5c:	00078713          	mv	a4,a5
        curr = curr->next;
    80004a60:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004a64:	ff1ff06f          	j	80004a54 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x2c>
            newAllocated->next = curr;
    80004a68:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    80004a6c:	00070a63          	beqz	a4,80004a80 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x58>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80004a70:	00a73423          	sd	a0,8(a4)
}
    80004a74:	00813403          	ld	s0,8(sp)
    80004a78:	01010113          	addi	sp,sp,16
    80004a7c:	00008067          	ret
        headAllocated = newAllocated;
    80004a80:	00004797          	auipc	a5,0x4
    80004a84:	04a7bc23          	sd	a0,88(a5) # 80008ad8 <_ZN15MemoryAllocator13headAllocatedE>
    80004a88:	fedff06f          	j	80004a74 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x4c>

0000000080004a8c <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    80004a8c:	00004797          	auipc	a5,0x4
    80004a90:	0447a783          	lw	a5,68(a5) # 80008ad0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004a94:	0e078e63          	beqz	a5,80004b90 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x104>
{
    80004a98:	fe010113          	addi	sp,sp,-32
    80004a9c:	00113c23          	sd	ra,24(sp)
    80004aa0:	00813823          	sd	s0,16(sp)
    80004aa4:	00913423          	sd	s1,8(sp)
    80004aa8:	02010413          	addi	s0,sp,32
    80004aac:	00050593          	mv	a1,a0
        return nullptr;
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004ab0:	00004497          	auipc	s1,0x4
    80004ab4:	0304b483          	ld	s1,48(s1) # 80008ae0 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    80004ab8:	00000713          	li	a4,0
    while(curr != 0)
    80004abc:	0a048e63          	beqz	s1,80004b78 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xec>
    {
        if(curr->size >= size)
    80004ac0:	0004b783          	ld	a5,0(s1)
    80004ac4:	00b7f863          	bgeu	a5,a1,80004ad4 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            //insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    80004ac8:	00048713          	mv	a4,s1
        curr = curr->next;
    80004acc:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004ad0:	fedff06f          	j	80004abc <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    80004ad4:	01058693          	addi	a3,a1,16
    80004ad8:	00d486b3          	add	a3,s1,a3
            void* nxtAllFrag = ((char*)curr + curr->size + sizeof(BlockHeader));
    80004adc:	01078613          	addi	a2,a5,16
    80004ae0:	00c48633          	add	a2,s1,a2
            if(newAddr <= HEAP_END_ADDR)
    80004ae4:	00004517          	auipc	a0,0x4
    80004ae8:	e9c53503          	ld	a0,-356(a0) # 80008980 <_GLOBAL_OFFSET_TABLE_+0x98>
    80004aec:	00053503          	ld	a0,0(a0)
    80004af0:	06d56063          	bltu	a0,a3,80004b50 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc4>
                uint64 size2 = curr->size - size;
    80004af4:	40b78533          	sub	a0,a5,a1
                if(size2 > sizeof(BlockHeader))
    80004af8:	01000813          	li	a6,16
    80004afc:	02a87663          	bgeu	a6,a0,80004b28 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                    newFree->next = curr->next;
    80004b00:	0084b783          	ld	a5,8(s1)
    80004b04:	00f6b423          	sd	a5,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    80004b08:	ff050513          	addi	a0,a0,-16
    80004b0c:	00a6b023          	sd	a0,0(a3)
                    if (prev != 0)
    80004b10:	00070663          	beqz	a4,80004b1c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x90>
                        prev->next = newFree;
    80004b14:	00d73423          	sd	a3,8(a4)
    80004b18:	0400006f          	j	80004b58 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = newFree;
    80004b1c:	00004797          	auipc	a5,0x4
    80004b20:	fcd7b223          	sd	a3,-60(a5) # 80008ae0 <_ZN15MemoryAllocator8headFreeE>
    80004b24:	0340006f          	j	80004b58 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                    if(prev != 0)
    80004b28:	00070a63          	beqz	a4,80004b3c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb0>
                        prev->next = curr->next;
    80004b2c:	0084b683          	ld	a3,8(s1)
    80004b30:	00d73423          	sd	a3,8(a4)
                    size+=size2;
    80004b34:	00078593          	mv	a1,a5
    80004b38:	0200006f          	j	80004b58 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = curr->next;
    80004b3c:	0084b703          	ld	a4,8(s1)
    80004b40:	00004697          	auipc	a3,0x4
    80004b44:	fae6b023          	sd	a4,-96(a3) # 80008ae0 <_ZN15MemoryAllocator8headFreeE>
                    size+=size2;
    80004b48:	00078593          	mv	a1,a5
    80004b4c:	00c0006f          	j	80004b58 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                if(prev != 0)
    80004b50:	00070e63          	beqz	a4,80004b6c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe0>
                    prev->next = 0;
    80004b54:	00073423          	sd	zero,8(a4)
            insertAllFragment(oldAddr, size, nxtAllFrag);
    80004b58:	00048513          	mv	a0,s1
    80004b5c:	00000097          	auipc	ra,0x0
    80004b60:	e5c080e7          	jalr	-420(ra) # 800049b8 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    80004b64:	01048513          	addi	a0,s1,16
            break;
    80004b68:	0140006f          	j	80004b7c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf0>
                    headFree = 0;
    80004b6c:	00004797          	auipc	a5,0x4
    80004b70:	f607ba23          	sd	zero,-140(a5) # 80008ae0 <_ZN15MemoryAllocator8headFreeE>
    80004b74:	fe5ff06f          	j	80004b58 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
    uint64 retval = 0;
    80004b78:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80004b7c:	01813083          	ld	ra,24(sp)
    80004b80:	01013403          	ld	s0,16(sp)
    80004b84:	00813483          	ld	s1,8(sp)
    80004b88:	02010113          	addi	sp,sp,32
    80004b8c:	00008067          	ret
        return nullptr;
    80004b90:	00000513          	li	a0,0
}
    80004b94:	00008067          	ret

0000000080004b98 <_ZN15MemoryAllocator9mem_allocEm>:
{
    80004b98:	ff010113          	addi	sp,sp,-16
    80004b9c:	00113423          	sd	ra,8(sp)
    80004ba0:	00813023          	sd	s0,0(sp)
    80004ba4:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    80004ba8:	00000097          	auipc	ra,0x0
    80004bac:	ee4080e7          	jalr	-284(ra) # 80004a8c <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    80004bb0:	00813083          	ld	ra,8(sp)
    80004bb4:	00013403          	ld	s0,0(sp)
    80004bb8:	01010113          	addi	sp,sp,16
    80004bbc:	00008067          	ret

0000000080004bc0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    80004bc0:	ff010113          	addi	sp,sp,-16
    80004bc4:	00813423          	sd	s0,8(sp)
    80004bc8:	01010413          	addi	s0,sp,16
    //initMemory();
    if(memoryInitiliaized == 0)
    80004bcc:	00004797          	auipc	a5,0x4
    80004bd0:	f047a783          	lw	a5,-252(a5) # 80008ad0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004bd4:	06078263          	beqz	a5,80004c38 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
        return;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    80004bd8:	00004797          	auipc	a5,0x4
    80004bdc:	f087b783          	ld	a5,-248(a5) # 80008ae0 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    80004be0:	00b53023          	sd	a1,0(a0)
    newSegment->next = 0;
    80004be4:	00053423          	sd	zero,8(a0)
    BlockHeader* prev = 0;
    80004be8:	00000713          	li	a4,0
    while(curr != 0)
    80004bec:	00078c63          	beqz	a5,80004c04 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x44>
    {
        if((void*)curr > addr)
    80004bf0:	00f56863          	bltu	a0,a5,80004c00 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x40>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    80004bf4:	00078713          	mv	a4,a5
        curr = curr->next;
    80004bf8:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004bfc:	ff1ff06f          	j	80004bec <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x2c>
            newSegment->next = curr;
    80004c00:	00f53423          	sd	a5,8(a0)
    }

    if(prev == 0)
    80004c04:	04070063          	beqz	a4,80004c44 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x84>
        headFree = newSegment;
    else
        prev->next = newSegment;
    80004c08:	00a73423          	sd	a0,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80004c0c:	00853783          	ld	a5,8(a0)
    80004c10:	00078a63          	beqz	a5,80004c24 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
    80004c14:	00053603          	ld	a2,0(a0)
    80004c18:	01060693          	addi	a3,a2,16
    80004c1c:	00d506b3          	add	a3,a0,a3
    80004c20:	02d78863          	beq	a5,a3,80004c50 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x90>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80004c24:	00070a63          	beqz	a4,80004c38 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>
    80004c28:	00073683          	ld	a3,0(a4)
    80004c2c:	01068793          	addi	a5,a3,16
    80004c30:	00f707b3          	add	a5,a4,a5
    80004c34:	02a78c63          	beq	a5,a0,80004c6c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    80004c38:	00813403          	ld	s0,8(sp)
    80004c3c:	01010113          	addi	sp,sp,16
    80004c40:	00008067          	ret
        headFree = newSegment;
    80004c44:	00004797          	auipc	a5,0x4
    80004c48:	e8a7be23          	sd	a0,-356(a5) # 80008ae0 <_ZN15MemoryAllocator8headFreeE>
    80004c4c:	fc1ff06f          	j	80004c0c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x4c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80004c50:	0007b683          	ld	a3,0(a5)
    80004c54:	00d60633          	add	a2,a2,a3
    80004c58:	01060613          	addi	a2,a2,16
    80004c5c:	00c53023          	sd	a2,0(a0)
        newSegment->next = newSegment->next->next;
    80004c60:	0087b783          	ld	a5,8(a5)
    80004c64:	00f53423          	sd	a5,8(a0)
    80004c68:	fbdff06f          	j	80004c24 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x64>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    80004c6c:	00053783          	ld	a5,0(a0)
    80004c70:	00f686b3          	add	a3,a3,a5
    80004c74:	01068693          	addi	a3,a3,16
    80004c78:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    80004c7c:	00853783          	ld	a5,8(a0)
    80004c80:	00f73423          	sd	a5,8(a4)
    80004c84:	fb5ff06f          	j	80004c38 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x78>

0000000080004c88 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    //initMemory();
    if(memoryInitiliaized == 0)
    80004c88:	00004797          	auipc	a5,0x4
    80004c8c:	e487a783          	lw	a5,-440(a5) # 80008ad0 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004c90:	08078263          	beqz	a5,80004d14 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x8c>
{
    80004c94:	fe010113          	addi	sp,sp,-32
    80004c98:	00113c23          	sd	ra,24(sp)
    80004c9c:	00813823          	sd	s0,16(sp)
    80004ca0:	00913423          	sd	s1,8(sp)
    80004ca4:	02010413          	addi	s0,sp,32
        return 1;
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    80004ca8:	00004497          	auipc	s1,0x4
    80004cac:	e304b483          	ld	s1,-464(s1) # 80008ad8 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    80004cb0:	00000713          	li	a4,0
    while(curr != 0)
    80004cb4:	02048a63          	beqz	s1,80004ce8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x60>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    80004cb8:	01048793          	addi	a5,s1,16
    80004cbc:	00a78863          	beq	a5,a0,80004ccc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x44>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    80004cc0:	00048713          	mv	a4,s1
        curr = curr->next;
    80004cc4:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80004cc8:	fedff06f          	j	80004cb4 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x2c>
            if(prev != 0)
    80004ccc:	02070c63          	beqz	a4,80004d04 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x7c>
                prev->next = curr->next;
    80004cd0:	0084b783          	ld	a5,8(s1)
    80004cd4:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    80004cd8:	0004b583          	ld	a1,0(s1)
    80004cdc:	00048513          	mv	a0,s1
    80004ce0:	00000097          	auipc	ra,0x0
    80004ce4:	ee0080e7          	jalr	-288(ra) # 80004bc0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    80004ce8:	02048a63          	beqz	s1,80004d1c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80004cec:	00000513          	li	a0,0
    else
        return 1;
}
    80004cf0:	01813083          	ld	ra,24(sp)
    80004cf4:	01013403          	ld	s0,16(sp)
    80004cf8:	00813483          	ld	s1,8(sp)
    80004cfc:	02010113          	addi	sp,sp,32
    80004d00:	00008067          	ret
                headAllocated = curr->next;
    80004d04:	0084b783          	ld	a5,8(s1)
    80004d08:	00004717          	auipc	a4,0x4
    80004d0c:	dcf73823          	sd	a5,-560(a4) # 80008ad8 <_ZN15MemoryAllocator13headAllocatedE>
    80004d10:	fc9ff06f          	j	80004cd8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x50>
        return 1;
    80004d14:	00100513          	li	a0,1
}
    80004d18:	00008067          	ret
        return 1;
    80004d1c:	00100513          	li	a0,1
    80004d20:	fd1ff06f          	j	80004cf0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x68>

0000000080004d24 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80004d24:	ff010113          	addi	sp,sp,-16
    80004d28:	00113423          	sd	ra,8(sp)
    80004d2c:	00813023          	sd	s0,0(sp)
    80004d30:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80004d34:	00000097          	auipc	ra,0x0
    80004d38:	f54080e7          	jalr	-172(ra) # 80004c88 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    80004d3c:	00813083          	ld	ra,8(sp)
    80004d40:	00013403          	ld	s0,0(sp)
    80004d44:	01010113          	addi	sp,sp,16
    80004d48:	00008067          	ret

0000000080004d4c <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    80004d4c:	ff010113          	addi	sp,sp,-16
    80004d50:	00113423          	sd	ra,8(sp)
    80004d54:	00813023          	sd	s0,0(sp)
    80004d58:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    80004d5c:	00000097          	auipc	ra,0x0
    80004d60:	e3c080e7          	jalr	-452(ra) # 80004b98 <_ZN15MemoryAllocator9mem_allocEm>
}
    80004d64:	00813083          	ld	ra,8(sp)
    80004d68:	00013403          	ld	s0,0(sp)
    80004d6c:	01010113          	addi	sp,sp,16
    80004d70:	00008067          	ret

0000000080004d74 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80004d74:	ff010113          	addi	sp,sp,-16
    80004d78:	00113423          	sd	ra,8(sp)
    80004d7c:	00813023          	sd	s0,0(sp)
    80004d80:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80004d84:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    80004d88:	00651513          	slli	a0,a0,0x6
    80004d8c:	00000097          	auipc	ra,0x0
    80004d90:	fc0080e7          	jalr	-64(ra) # 80004d4c <_ZN15MemoryAllocator7kmallocEm>
    if(allocatedAddr == nullptr)
    80004d94:	02050063          	beqz	a0,80004db4 <_ZN15MemoryAllocator15memAllocHandlerEv+0x40>
        __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    80004d98:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004d9c:	00000097          	auipc	ra,0x0
    80004da0:	87c080e7          	jalr	-1924(ra) # 80004618 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004da4:	00813083          	ld	ra,8(sp)
    80004da8:	00013403          	ld	s0,0(sp)
    80004dac:	01010113          	addi	sp,sp,16
    80004db0:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    80004db4:	00000513          	li	a0,0
    80004db8:	fe5ff06f          	j	80004d9c <_ZN15MemoryAllocator15memAllocHandlerEv+0x28>

0000000080004dbc <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    80004dbc:	ff010113          	addi	sp,sp,-16
    80004dc0:	00113423          	sd	ra,8(sp)
    80004dc4:	00813023          	sd	s0,0(sp)
    80004dc8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    80004dcc:	00000097          	auipc	ra,0x0
    80004dd0:	f58080e7          	jalr	-168(ra) # 80004d24 <_ZN15MemoryAllocator8mem_freeEPv>
    80004dd4:	00813083          	ld	ra,8(sp)
    80004dd8:	00013403          	ld	s0,0(sp)
    80004ddc:	01010113          	addi	sp,sp,16
    80004de0:	00008067          	ret

0000000080004de4 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    80004de4:	ff010113          	addi	sp,sp,-16
    80004de8:	00113423          	sd	ra,8(sp)
    80004dec:	00813023          	sd	s0,0(sp)
    80004df0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    80004df4:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    80004df8:	00000097          	auipc	ra,0x0
    80004dfc:	fc4080e7          	jalr	-60(ra) # 80004dbc <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004e00:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004e04:	00000097          	auipc	ra,0x0
    80004e08:	814080e7          	jalr	-2028(ra) # 80004618 <_ZN5Riscv13w_a0_sscratchEv>
}
    80004e0c:	00813083          	ld	ra,8(sp)
    80004e10:	00013403          	ld	s0,0(sp)
    80004e14:	01010113          	addi	sp,sp,16
    80004e18:	00008067          	ret

0000000080004e1c <_Z12slabInitTestv>:
#include "../../h/slabTests.hpp"
#include "../../h/KConsole.hpp"

void slabInitTest()
{
    80004e1c:	ff010113          	addi	sp,sp,-16
    80004e20:	00113423          	sd	ra,8(sp)
    80004e24:	00813023          	sd	s0,0(sp)
    80004e28:	01010413          	addi	s0,sp,16
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004e2c:	00f00593          	li	a1,15
    80004e30:	00004797          	auipc	a5,0x4
    80004e34:	ad07b783          	ld	a5,-1328(a5) # 80008900 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004e38:	0007b503          	ld	a0,0(a5)
    80004e3c:	ffffd097          	auipc	ra,0xffffd
    80004e40:	f84080e7          	jalr	-124(ra) # 80001dc0 <_Z9kmem_initPvi>
}
    80004e44:	00813083          	ld	ra,8(sp)
    80004e48:	00013403          	ld	s0,0(sp)
    80004e4c:	01010113          	addi	sp,sp,16
    80004e50:	00008067          	ret

0000000080004e54 <_Z19slabCacheCreateTestv>:

void slabCacheCreateTest()
{
    80004e54:	fe010113          	addi	sp,sp,-32
    80004e58:	00113c23          	sd	ra,24(sp)
    80004e5c:	00813823          	sd	s0,16(sp)
    80004e60:	00913423          	sd	s1,8(sp)
    80004e64:	01213023          	sd	s2,0(sp)
    80004e68:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004e6c:	00f00593          	li	a1,15
    80004e70:	00004797          	auipc	a5,0x4
    80004e74:	a907b783          	ld	a5,-1392(a5) # 80008900 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004e78:	0007b503          	ld	a0,0(a5)
    80004e7c:	ffffd097          	auipc	ra,0xffffd
    80004e80:	f44080e7          	jalr	-188(ra) # 80001dc0 <_Z9kmem_initPvi>
    kmem_cache_t* cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80004e84:	00000693          	li	a3,0
    80004e88:	00000613          	li	a2,0
    80004e8c:	00a00593          	li	a1,10
    80004e90:	00003517          	auipc	a0,0x3
    80004e94:	68850513          	addi	a0,a0,1672 # 80008518 <CONSOLE_STATUS+0x508>
    80004e98:	ffffd097          	auipc	ra,0xffffd
    80004e9c:	e84080e7          	jalr	-380(ra) # 80001d1c <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004ea0:	00050493          	mv	s1,a0
    kmem_cache_t* cache2 = kmem_cache_create("Cache test 2", 10, nullptr,nullptr);
    80004ea4:	00000693          	li	a3,0
    80004ea8:	00000613          	li	a2,0
    80004eac:	00a00593          	li	a1,10
    80004eb0:	00003517          	auipc	a0,0x3
    80004eb4:	67850513          	addi	a0,a0,1656 # 80008528 <CONSOLE_STATUS+0x518>
    80004eb8:	ffffd097          	auipc	ra,0xffffd
    80004ebc:	e64080e7          	jalr	-412(ra) # 80001d1c <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004ec0:	00050913          	mv	s2,a0
    kmem_cache_t* cache3 = kmem_cache_create("Cache test 3", 10, nullptr,nullptr);
    80004ec4:	00000693          	li	a3,0
    80004ec8:	00000613          	li	a2,0
    80004ecc:	00a00593          	li	a1,10
    80004ed0:	00003517          	auipc	a0,0x3
    80004ed4:	66850513          	addi	a0,a0,1640 # 80008538 <CONSOLE_STATUS+0x528>
    80004ed8:	ffffd097          	auipc	ra,0xffffd
    80004edc:	e44080e7          	jalr	-444(ra) # 80001d1c <_Z17kmem_cache_createPKcmPFvPvES3_>
    if(cache && cache2 && cache3)
    80004ee0:	00048a63          	beqz	s1,80004ef4 <_Z19slabCacheCreateTestv+0xa0>
    80004ee4:	00090863          	beqz	s2,80004ef4 <_Z19slabCacheCreateTestv+0xa0>
    80004ee8:	00050663          	beqz	a0,80004ef4 <_Z19slabCacheCreateTestv+0xa0>
        printSlabAllocatorInfo();
    80004eec:	ffffd097          	auipc	ra,0xffffd
    80004ef0:	30c080e7          	jalr	780(ra) # 800021f8 <_Z22printSlabAllocatorInfov>
}
    80004ef4:	01813083          	ld	ra,24(sp)
    80004ef8:	01013403          	ld	s0,16(sp)
    80004efc:	00813483          	ld	s1,8(sp)
    80004f00:	00013903          	ld	s2,0(sp)
    80004f04:	02010113          	addi	sp,sp,32
    80004f08:	00008067          	ret

0000000080004f0c <_Z20slabCacheCreateTest2v>:

void slabCacheCreateTest2()
{
    80004f0c:	fe010113          	addi	sp,sp,-32
    80004f10:	00113c23          	sd	ra,24(sp)
    80004f14:	00813823          	sd	s0,16(sp)
    80004f18:	00913423          	sd	s1,8(sp)
    80004f1c:	01213023          	sd	s2,0(sp)
    80004f20:	02010413          	addi	s0,sp,32
    kmem_init((void*)HEAP_START_ADDR, 15);
    80004f24:	00f00593          	li	a1,15
    80004f28:	00004797          	auipc	a5,0x4
    80004f2c:	9d87b783          	ld	a5,-1576(a5) # 80008900 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004f30:	0007b503          	ld	a0,0(a5)
    80004f34:	ffffd097          	auipc	ra,0xffffd
    80004f38:	e8c080e7          	jalr	-372(ra) # 80001dc0 <_Z9kmem_initPvi>
    kmem_cache_t * cache = nullptr;
    for(int i = 1;i<=68;i++)
    80004f3c:	00100493          	li	s1,1
    kmem_cache_t * cache = nullptr;
    80004f40:	00000913          	li	s2,0
    for(int i = 1;i<=68;i++)
    80004f44:	04400793          	li	a5,68
    80004f48:	0297c663          	blt	a5,s1,80004f74 <_Z20slabCacheCreateTest2v+0x68>
    {
        cache = kmem_cache_create("Cache test", 10, nullptr,nullptr);
    80004f4c:	00000693          	li	a3,0
    80004f50:	00000613          	li	a2,0
    80004f54:	00a00593          	li	a1,10
    80004f58:	00003517          	auipc	a0,0x3
    80004f5c:	5c050513          	addi	a0,a0,1472 # 80008518 <CONSOLE_STATUS+0x508>
    80004f60:	ffffd097          	auipc	ra,0xffffd
    80004f64:	dbc080e7          	jalr	-580(ra) # 80001d1c <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004f68:	00050913          	mv	s2,a0
    for(int i = 1;i<=68;i++)
    80004f6c:	0014849b          	addiw	s1,s1,1
    80004f70:	fd5ff06f          	j	80004f44 <_Z20slabCacheCreateTest2v+0x38>
    }
    printSlabAllocatorInfo();
    80004f74:	ffffd097          	auipc	ra,0xffffd
    80004f78:	284080e7          	jalr	644(ra) # 800021f8 <_Z22printSlabAllocatorInfov>
    kmem_cache_destroy(cache);
    80004f7c:	00090513          	mv	a0,s2
    80004f80:	ffffd097          	auipc	ra,0xffffd
    80004f84:	5e4080e7          	jalr	1508(ra) # 80002564 <_Z18kmem_cache_destroyP12kmem_cache_s>
    printSlabAllocatorInfo();
    80004f88:	ffffd097          	auipc	ra,0xffffd
    80004f8c:	270080e7          	jalr	624(ra) # 800021f8 <_Z22printSlabAllocatorInfov>
}
    80004f90:	01813083          	ld	ra,24(sp)
    80004f94:	01013403          	ld	s0,16(sp)
    80004f98:	00813483          	ld	s1,8(sp)
    80004f9c:	00013903          	ld	s2,0(sp)
    80004fa0:	02010113          	addi	sp,sp,32
    80004fa4:	00008067          	ret

0000000080004fa8 <_Z11testKmallocv>:

void testKmalloc()
{
    80004fa8:	fc010113          	addi	sp,sp,-64
    80004fac:	02113c23          	sd	ra,56(sp)
    80004fb0:	02813823          	sd	s0,48(sp)
    80004fb4:	02913423          	sd	s1,40(sp)
    80004fb8:	03213023          	sd	s2,32(sp)
    80004fbc:	01313c23          	sd	s3,24(sp)
    80004fc0:	01413823          	sd	s4,16(sp)
    80004fc4:	01513423          	sd	s5,8(sp)
    80004fc8:	04010413          	addi	s0,sp,64
    void** x = (void**)kmalloc(sizeof(void*)*200);
    80004fcc:	64000513          	li	a0,1600
    80004fd0:	ffffd097          	auipc	ra,0xffffd
    80004fd4:	310080e7          	jalr	784(ra) # 800022e0 <_Z7kmallocm>
    80004fd8:	00050a13          	mv	s4,a0
    int indeks = 0;
    for(int i = 0;i < 10;i++)
    80004fdc:	00000a93          	li	s5,0
    int indeks = 0;
    80004fe0:	00000493          	li	s1,0
    80004fe4:	0800006f          	j	80005064 <_Z11testKmallocv+0xbc>
    {
        for(int j = 5;j<=18;j++)
    80004fe8:	0019091b          	addiw	s2,s2,1
        {
            void* adr = kmalloc(1 << j);
            x[indeks++] = adr;
    80004fec:	00098493          	mv	s1,s3
        for(int j = 5;j<=18;j++)
    80004ff0:	01200793          	li	a5,18
    80004ff4:	0727c663          	blt	a5,s2,80005060 <_Z11testKmallocv+0xb8>
            void* adr = kmalloc(1 << j);
    80004ff8:	00100513          	li	a0,1
    80004ffc:	0125153b          	sllw	a0,a0,s2
    80005000:	ffffd097          	auipc	ra,0xffffd
    80005004:	2e0080e7          	jalr	736(ra) # 800022e0 <_Z7kmallocm>
            x[indeks++] = adr;
    80005008:	0014899b          	addiw	s3,s1,1
    8000500c:	00349493          	slli	s1,s1,0x3
    80005010:	009a04b3          	add	s1,s4,s1
    80005014:	00a4b023          	sd	a0,0(s1)
            if(adr == nullptr)
    80005018:	fc0518e3          	bnez	a0,80004fe8 <_Z11testKmallocv+0x40>
            {
                KConsole::trapPrintString("Nullptr je\n");
    8000501c:	00003517          	auipc	a0,0x3
    80005020:	52c50513          	addi	a0,a0,1324 # 80008548 <CONSOLE_STATUS+0x538>
    80005024:	fffff097          	auipc	ra,0xfffff
    80005028:	904080e7          	jalr	-1788(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
                KConsole::trapPrintStringInt("i ", i);
    8000502c:	00a00613          	li	a2,10
    80005030:	000a8593          	mv	a1,s5
    80005034:	00003517          	auipc	a0,0x3
    80005038:	52450513          	addi	a0,a0,1316 # 80008558 <CONSOLE_STATUS+0x548>
    8000503c:	fffff097          	auipc	ra,0xfffff
    80005040:	9c4080e7          	jalr	-1596(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
                KConsole::trapPrintStringInt("j ", j);
    80005044:	00a00613          	li	a2,10
    80005048:	00090593          	mv	a1,s2
    8000504c:	00003517          	auipc	a0,0x3
    80005050:	51450513          	addi	a0,a0,1300 # 80008560 <CONSOLE_STATUS+0x550>
    80005054:	fffff097          	auipc	ra,0xfffff
    80005058:	9ac080e7          	jalr	-1620(ra) # 80003a00 <_ZN8KConsole18trapPrintStringIntEPKcmi>
    8000505c:	f8dff06f          	j	80004fe8 <_Z11testKmallocv+0x40>
    for(int i = 0;i < 10;i++)
    80005060:	001a8a9b          	addiw	s5,s5,1
    80005064:	00900793          	li	a5,9
    80005068:	0157c663          	blt	a5,s5,80005074 <_Z11testKmallocv+0xcc>
        for(int j = 5;j<=18;j++)
    8000506c:	00500913          	li	s2,5
    80005070:	f81ff06f          	j	80004ff0 <_Z11testKmallocv+0x48>
            }
        }
    }
    for(int i = 0; i < indeks;i++)
    80005074:	00000913          	li	s2,0
    80005078:	02995063          	bge	s2,s1,80005098 <_Z11testKmallocv+0xf0>
    {
      kfree(x[i]);
    8000507c:	00391793          	slli	a5,s2,0x3
    80005080:	00fa07b3          	add	a5,s4,a5
    80005084:	0007b503          	ld	a0,0(a5)
    80005088:	ffffd097          	auipc	ra,0xffffd
    8000508c:	3f8080e7          	jalr	1016(ra) # 80002480 <_Z5kfreePKv>
    for(int i = 0; i < indeks;i++)
    80005090:	0019091b          	addiw	s2,s2,1
    80005094:	fe5ff06f          	j	80005078 <_Z11testKmallocv+0xd0>
    }
    printSlabAllocatorInfo();
    80005098:	ffffd097          	auipc	ra,0xffffd
    8000509c:	160080e7          	jalr	352(ra) # 800021f8 <_Z22printSlabAllocatorInfov>
}
    800050a0:	03813083          	ld	ra,56(sp)
    800050a4:	03013403          	ld	s0,48(sp)
    800050a8:	02813483          	ld	s1,40(sp)
    800050ac:	02013903          	ld	s2,32(sp)
    800050b0:	01813983          	ld	s3,24(sp)
    800050b4:	01013a03          	ld	s4,16(sp)
    800050b8:	00813a83          	ld	s5,8(sp)
    800050bc:	04010113          	addi	sp,sp,64
    800050c0:	00008067          	ret

00000000800050c4 <_Z6memsetPKvii>:
                                    "tc_1",
                                    "tc_2",
                                    "tc_3",
                                    "tc_4"};

void memset(const void *data, int size, int value) {
    800050c4:	ff010113          	addi	sp,sp,-16
    800050c8:	00813423          	sd	s0,8(sp)
    800050cc:	01010413          	addi	s0,sp,16
    for (int j = 0; j < size; j++) {
    800050d0:	00000793          	li	a5,0
    800050d4:	00b7da63          	bge	a5,a1,800050e8 <_Z6memsetPKvii+0x24>
        *((char *)data + j) = value;
    800050d8:	00f50733          	add	a4,a0,a5
    800050dc:	00c70023          	sb	a2,0(a4)
    for (int j = 0; j < size; j++) {
    800050e0:	0017879b          	addiw	a5,a5,1
    800050e4:	ff1ff06f          	j	800050d4 <_Z6memsetPKvii+0x10>
    }
}
    800050e8:	00813403          	ld	s0,8(sp)
    800050ec:	01010113          	addi	sp,sp,16
    800050f0:	00008067          	ret

00000000800050f4 <_Z9constructPv>:

void construct(void *data) {
    800050f4:	ff010113          	addi	sp,sp,-16
    800050f8:	00113423          	sd	ra,8(sp)
    800050fc:	00813023          	sd	s0,0(sp)
    80005100:	01010413          	addi	s0,sp,16
    //static int i = 1;
    //KConsole::trapPrintInt(i); i++;
    //KConsole::trapPrintString(" Shared object constructed.\n");
    memset(data, shared_size, MASK);
    80005104:	0a500613          	li	a2,165
    80005108:	00700593          	li	a1,7
    8000510c:	00000097          	auipc	ra,0x0
    80005110:	fb8080e7          	jalr	-72(ra) # 800050c4 <_Z6memsetPKvii>
}
    80005114:	00813083          	ld	ra,8(sp)
    80005118:	00013403          	ld	s0,0(sp)
    8000511c:	01010113          	addi	sp,sp,16
    80005120:	00008067          	ret

0000000080005124 <_Z5checkPvm>:

int check(void *data, size_t size) {
    80005124:	ff010113          	addi	sp,sp,-16
    80005128:	00813423          	sd	s0,8(sp)
    8000512c:	01010413          	addi	s0,sp,16
    80005130:	00050613          	mv	a2,a0
    int ret = 1;
    for (size_t i = 0; i < size; i++) {
    80005134:	00000793          	li	a5,0
    int ret = 1;
    80005138:	00100513          	li	a0,1
    8000513c:	0080006f          	j	80005144 <_Z5checkPvm+0x20>
    for (size_t i = 0; i < size; i++) {
    80005140:	00178793          	addi	a5,a5,1
    80005144:	00b7fe63          	bgeu	a5,a1,80005160 <_Z5checkPvm+0x3c>
        if (((unsigned char *)data)[i] != MASK) {
    80005148:	00f60733          	add	a4,a2,a5
    8000514c:	00074683          	lbu	a3,0(a4)
    80005150:	0a500713          	li	a4,165
    80005154:	fee686e3          	beq	a3,a4,80005140 <_Z5checkPvm+0x1c>
            ret = 0;
    80005158:	00000513          	li	a0,0
    8000515c:	fe5ff06f          	j	80005140 <_Z5checkPvm+0x1c>
        }
    }

    return ret;
}
    80005160:	00813403          	ld	s0,8(sp)
    80005164:	01010113          	addi	sp,sp,16
    80005168:	00008067          	ret

000000008000516c <_Z4workPv>:
    kmem_cache_t *cache;
    void *data;
};

void work(void* pdata)
{
    8000516c:	f8010113          	addi	sp,sp,-128
    80005170:	06113c23          	sd	ra,120(sp)
    80005174:	06813823          	sd	s0,112(sp)
    80005178:	06913423          	sd	s1,104(sp)
    8000517c:	07213023          	sd	s2,96(sp)
    80005180:	05313c23          	sd	s3,88(sp)
    80005184:	05413823          	sd	s4,80(sp)
    80005188:	05513423          	sd	s5,72(sp)
    8000518c:	05613023          	sd	s6,64(sp)
    80005190:	03713c23          	sd	s7,56(sp)
    80005194:	03813823          	sd	s8,48(sp)
    80005198:	03913423          	sd	s9,40(sp)
    8000519c:	08010413          	addi	s0,sp,128
    struct data_s data = *(struct data_s*) pdata;
    800051a0:	00053c03          	ld	s8,0(a0)
    800051a4:	f9843423          	sd	s8,-120(s0)
    800051a8:	00853783          	ld	a5,8(a0)
    800051ac:	f8f43823          	sd	a5,-112(s0)
    800051b0:	01053783          	ld	a5,16(a0)
    800051b4:	f8f43c23          	sd	a5,-104(s0)
    int size = 0;
    int object_size = data.id + 1;
    800051b8:	000c079b          	sext.w	a5,s8
    800051bc:	001c0c1b          	addiw	s8,s8,1
    kmem_cache_t *cache = kmem_cache_create(CACHE_NAMES[data.id], object_size, 0, 0);
    800051c0:	00379713          	slli	a4,a5,0x3
    800051c4:	00003797          	auipc	a5,0x3
    800051c8:	6fc78793          	addi	a5,a5,1788 # 800088c0 <_ZL11CACHE_NAMES>
    800051cc:	00e787b3          	add	a5,a5,a4
    800051d0:	000c0b13          	mv	s6,s8
    800051d4:	00000693          	li	a3,0
    800051d8:	00000613          	li	a2,0
    800051dc:	000c0593          	mv	a1,s8
    800051e0:	0007b503          	ld	a0,0(a5)
    800051e4:	ffffd097          	auipc	ra,0xffffd
    800051e8:	b38080e7          	jalr	-1224(ra) # 80001d1c <_Z17kmem_cache_createPKcmPFvPvES3_>
    800051ec:	00050a13          	mv	s4,a0

    struct objects_s *objs = (struct objects_s*)(kmalloc(sizeof(struct objects_s) * data.iterations));
    800051f0:	f9842b83          	lw	s7,-104(s0)
    800051f4:	004b9513          	slli	a0,s7,0x4
    800051f8:	ffffd097          	auipc	ra,0xffffd
    800051fc:	0e8080e7          	jalr	232(ra) # 800022e0 <_Z7kmallocm>
    80005200:	00050a93          	mv	s5,a0

    for (int i = 0; i < data.iterations; i++) {
    80005204:	00000493          	li	s1,0
    int size = 0;
    80005208:	00000993          	li	s3,0
    8000520c:	0380006f          	j	80005244 <_Z4workPv+0xd8>
            if (!check(objs[size].data, shared_size)) {
                KConsole::trapPrintString("Value not correct!");
            }
        }
        else {
            objs[size].data = kmem_cache_alloc(cache);
    80005210:	00499913          	slli	s2,s3,0x4
    80005214:	012a8933          	add	s2,s5,s2
    80005218:	000a0513          	mv	a0,s4
    8000521c:	ffffd097          	auipc	ra,0xffffd
    80005220:	9c8080e7          	jalr	-1592(ra) # 80001be4 <_Z16kmem_cache_allocP12kmem_cache_s>
    80005224:	00a93423          	sd	a0,8(s2)
            objs[size].cache = cache;
    80005228:	01493023          	sd	s4,0(s2)
            memset(objs[size].data, object_size, MASK);
    8000522c:	0a500613          	li	a2,165
    80005230:	000c0593          	mv	a1,s8
    80005234:	00000097          	auipc	ra,0x0
    80005238:	e90080e7          	jalr	-368(ra) # 800050c4 <_Z6memsetPKvii>
        }
        size++;
    8000523c:	0019899b          	addiw	s3,s3,1
    for (int i = 0; i < data.iterations; i++) {
    80005240:	0014849b          	addiw	s1,s1,1
    80005244:	0574da63          	bge	s1,s7,80005298 <_Z4workPv+0x12c>
        if (i % 100 == 0) {
    80005248:	06400793          	li	a5,100
    8000524c:	02f4e7bb          	remw	a5,s1,a5
    80005250:	fc0790e3          	bnez	a5,80005210 <_Z4workPv+0xa4>
            objs[size].data = kmem_cache_alloc(data.shared);
    80005254:	f9043c83          	ld	s9,-112(s0)
    80005258:	00499913          	slli	s2,s3,0x4
    8000525c:	012a8933          	add	s2,s5,s2
    80005260:	000c8513          	mv	a0,s9
    80005264:	ffffd097          	auipc	ra,0xffffd
    80005268:	980080e7          	jalr	-1664(ra) # 80001be4 <_Z16kmem_cache_allocP12kmem_cache_s>
    8000526c:	00a93423          	sd	a0,8(s2)
            objs[size].cache = data.shared;
    80005270:	01993023          	sd	s9,0(s2)
            if (!check(objs[size].data, shared_size)) {
    80005274:	00700593          	li	a1,7
    80005278:	00000097          	auipc	ra,0x0
    8000527c:	eac080e7          	jalr	-340(ra) # 80005124 <_Z5checkPvm>
    80005280:	fa051ee3          	bnez	a0,8000523c <_Z4workPv+0xd0>
                KConsole::trapPrintString("Value not correct!");
    80005284:	00003517          	auipc	a0,0x3
    80005288:	2e450513          	addi	a0,a0,740 # 80008568 <CONSOLE_STATUS+0x558>
    8000528c:	ffffe097          	auipc	ra,0xffffe
    80005290:	69c080e7          	jalr	1692(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
    80005294:	fa9ff06f          	j	8000523c <_Z4workPv+0xd0>
    }

    kmem_cache_info(cache);
    80005298:	000a0513          	mv	a0,s4
    8000529c:	ffffd097          	auipc	ra,0xffffd
    800052a0:	e00080e7          	jalr	-512(ra) # 8000209c <_Z15kmem_cache_infoP12kmem_cache_s>
    kmem_cache_info(data.shared);
    800052a4:	f9043b83          	ld	s7,-112(s0)
    800052a8:	000b8513          	mv	a0,s7
    800052ac:	ffffd097          	auipc	ra,0xffffd
    800052b0:	df0080e7          	jalr	-528(ra) # 8000209c <_Z15kmem_cache_infoP12kmem_cache_s>
    //printSlabAllocatorInfo();

    for (int i = 0; i < size; i++) {
    800052b4:	00000913          	li	s2,0
    800052b8:	0300006f          	j	800052e8 <_Z4workPv+0x17c>
        if (!check(objs[i].data, (cache == objs[i].cache) ? object_size : shared_size)) {
    800052bc:	000b0593          	mv	a1,s6
    800052c0:	0440006f          	j	80005304 <_Z4workPv+0x198>
            KConsole::trapPrintString("Value not correct!");
    800052c4:	00003517          	auipc	a0,0x3
    800052c8:	2a450513          	addi	a0,a0,676 # 80008568 <CONSOLE_STATUS+0x558>
    800052cc:	ffffe097          	auipc	ra,0xffffe
    800052d0:	65c080e7          	jalr	1628(ra) # 80003928 <_ZN8KConsole15trapPrintStringEPKc>
        }
        kmem_cache_free(objs[i].cache, objs[i].data);
    800052d4:	0084b583          	ld	a1,8(s1)
    800052d8:	0004b503          	ld	a0,0(s1)
    800052dc:	ffffd097          	auipc	ra,0xffffd
    800052e0:	b48080e7          	jalr	-1208(ra) # 80001e24 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    for (int i = 0; i < size; i++) {
    800052e4:	0019091b          	addiw	s2,s2,1
    800052e8:	03395663          	bge	s2,s3,80005314 <_Z4workPv+0x1a8>
        if (!check(objs[i].data, (cache == objs[i].cache) ? object_size : shared_size)) {
    800052ec:	00491493          	slli	s1,s2,0x4
    800052f0:	009a84b3          	add	s1,s5,s1
    800052f4:	0084b503          	ld	a0,8(s1)
    800052f8:	0004b783          	ld	a5,0(s1)
    800052fc:	fd4780e3          	beq	a5,s4,800052bc <_Z4workPv+0x150>
    80005300:	00700593          	li	a1,7
    80005304:	00000097          	auipc	ra,0x0
    80005308:	e20080e7          	jalr	-480(ra) # 80005124 <_Z5checkPvm>
    8000530c:	fc0514e3          	bnez	a0,800052d4 <_Z4workPv+0x168>
    80005310:	fb5ff06f          	j	800052c4 <_Z4workPv+0x158>
    }
    kmem_cache_info(data.shared);
    80005314:	000b8513          	mv	a0,s7
    80005318:	ffffd097          	auipc	ra,0xffffd
    8000531c:	d84080e7          	jalr	-636(ra) # 8000209c <_Z15kmem_cache_infoP12kmem_cache_s>

    //kmem_cache_info(cache);
    //kmem_cache_info(data.shared);
    //printSlabAllocatorInfo();

    kfree(objs);
    80005320:	000a8513          	mv	a0,s5
    80005324:	ffffd097          	auipc	ra,0xffffd
    80005328:	15c080e7          	jalr	348(ra) # 80002480 <_Z5kfreePKv>
    kmem_cache_destroy(cache);
    8000532c:	000a0513          	mv	a0,s4
    80005330:	ffffd097          	auipc	ra,0xffffd
    80005334:	234080e7          	jalr	564(ra) # 80002564 <_Z18kmem_cache_destroyP12kmem_cache_s>

    //printSlabAllocatorInfo();
}
    80005338:	07813083          	ld	ra,120(sp)
    8000533c:	07013403          	ld	s0,112(sp)
    80005340:	06813483          	ld	s1,104(sp)
    80005344:	06013903          	ld	s2,96(sp)
    80005348:	05813983          	ld	s3,88(sp)
    8000534c:	05013a03          	ld	s4,80(sp)
    80005350:	04813a83          	ld	s5,72(sp)
    80005354:	04013b03          	ld	s6,64(sp)
    80005358:	03813b83          	ld	s7,56(sp)
    8000535c:	03013c03          	ld	s8,48(sp)
    80005360:	02813c83          	ld	s9,40(sp)
    80005364:	08010113          	addi	sp,sp,128
    80005368:	00008067          	ret

000000008000536c <_Z4runsPFvPvEP6data_si>:

void runs(void(*work)(void*), struct data_s* data, int num) {
    8000536c:	fb010113          	addi	sp,sp,-80
    80005370:	04113423          	sd	ra,72(sp)
    80005374:	04813023          	sd	s0,64(sp)
    80005378:	02913c23          	sd	s1,56(sp)
    8000537c:	03213823          	sd	s2,48(sp)
    80005380:	03313423          	sd	s3,40(sp)
    80005384:	05010413          	addi	s0,sp,80
    80005388:	00050993          	mv	s3,a0
    8000538c:	00058913          	mv	s2,a1
    for (int i = 0; i < RUN_NUM; i++) {
    80005390:	00000493          	li	s1,0
    80005394:	00400793          	li	a5,4
    80005398:	0297c863          	blt	a5,s1,800053c8 <_Z4runsPFvPvEP6data_si+0x5c>
        struct data_s private_data;
        private_data = *(struct data_s*) data;
    8000539c:	00093783          	ld	a5,0(s2)
    800053a0:	faf43c23          	sd	a5,-72(s0)
    800053a4:	00893783          	ld	a5,8(s2)
    800053a8:	fcf43023          	sd	a5,-64(s0)
    800053ac:	01093783          	ld	a5,16(s2)
    800053b0:	fcf43423          	sd	a5,-56(s0)
        private_data.id = i;
    800053b4:	fa942c23          	sw	s1,-72(s0)
        work(&private_data);
    800053b8:	fb840513          	addi	a0,s0,-72
    800053bc:	000980e7          	jalr	s3
    for (int i = 0; i < RUN_NUM; i++) {
    800053c0:	0014849b          	addiw	s1,s1,1
    800053c4:	fd1ff06f          	j	80005394 <_Z4runsPFvPvEP6data_si+0x28>
    }
}
    800053c8:	04813083          	ld	ra,72(sp)
    800053cc:	04013403          	ld	s0,64(sp)
    800053d0:	03813483          	ld	s1,56(sp)
    800053d4:	03013903          	ld	s2,48(sp)
    800053d8:	02813983          	ld	s3,40(sp)
    800053dc:	05010113          	addi	sp,sp,80
    800053e0:	00008067          	ret

00000000800053e4 <_Z7testOS2v>:

void testOS2()
{
    800053e4:	fc010113          	addi	sp,sp,-64
    800053e8:	02113c23          	sd	ra,56(sp)
    800053ec:	02813823          	sd	s0,48(sp)
    800053f0:	02913423          	sd	s1,40(sp)
    800053f4:	04010413          	addi	s0,sp,64
    kmem_cache_t *shared = kmem_cache_create("shared object", shared_size, construct, nullptr);
    800053f8:	00000693          	li	a3,0
    800053fc:	00000617          	auipc	a2,0x0
    80005400:	cf860613          	addi	a2,a2,-776 # 800050f4 <_Z9constructPv>
    80005404:	00700593          	li	a1,7
    80005408:	00003517          	auipc	a0,0x3
    8000540c:	17850513          	addi	a0,a0,376 # 80008580 <CONSOLE_STATUS+0x570>
    80005410:	ffffd097          	auipc	ra,0xffffd
    80005414:	90c080e7          	jalr	-1780(ra) # 80001d1c <_Z17kmem_cache_createPKcmPFvPvES3_>
    80005418:	00050493          	mv	s1,a0

    struct data_s data;
    data.shared = shared;
    8000541c:	fca43823          	sd	a0,-48(s0)
    data.iterations = ITERATIONS;
    80005420:	3e800793          	li	a5,1000
    80005424:	fcf42c23          	sw	a5,-40(s0)
    runs(work, &data, RUN_NUM);
    80005428:	00500613          	li	a2,5
    8000542c:	fc840593          	addi	a1,s0,-56
    80005430:	00000517          	auipc	a0,0x0
    80005434:	d3c50513          	addi	a0,a0,-708 # 8000516c <_Z4workPv>
    80005438:	00000097          	auipc	ra,0x0
    8000543c:	f34080e7          	jalr	-204(ra) # 8000536c <_Z4runsPFvPvEP6data_si>

    kmem_cache_destroy(shared);
    80005440:	00048513          	mv	a0,s1
    80005444:	ffffd097          	auipc	ra,0xffffd
    80005448:	120080e7          	jalr	288(ra) # 80002564 <_Z18kmem_cache_destroyP12kmem_cache_s>
    8000544c:	03813083          	ld	ra,56(sp)
    80005450:	03013403          	ld	s0,48(sp)
    80005454:	02813483          	ld	s1,40(sp)
    80005458:	04010113          	addi	sp,sp,64
    8000545c:	00008067          	ret

0000000080005460 <_ZN10KSemaphoreC1Ei>:
#include "../../h/KSemaphore.hpp"
#include "../../h/MemoryAllocator.hpp"
#include "../../h/Riscv.hpp"
#include "../../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
    80005460:	ff010113          	addi	sp,sp,-16
    80005464:	00813423          	sd	s0,8(sp)
    80005468:	01010413          	addi	s0,sp,16
{
    this->val = val;
    8000546c:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80005470:	00053423          	sd	zero,8(a0)
    80005474:	00053023          	sd	zero,0(a0)
}
    80005478:	00813403          	ld	s0,8(sp)
    8000547c:	01010113          	addi	sp,sp,16
    80005480:	00008067          	ret

0000000080005484 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80005484:	ff010113          	addi	sp,sp,-16
    80005488:	00813423          	sd	s0,8(sp)
    8000548c:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80005490:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80005494:	00053783          	ld	a5,0(a0)
    80005498:	00078e63          	beqz	a5,800054b4 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    8000549c:	00853783          	ld	a5,8(a0)
    800054a0:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    800054a4:	00b53423          	sd	a1,8(a0)
    }
}
    800054a8:	00813403          	ld	s0,8(sp)
    800054ac:	01010113          	addi	sp,sp,16
    800054b0:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    800054b4:	00b53423          	sd	a1,8(a0)
    800054b8:	00b53023          	sd	a1,0(a0)
    800054bc:	fedff06f          	j	800054a8 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

00000000800054c0 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    800054c0:	ff010113          	addi	sp,sp,-16
    800054c4:	00113423          	sd	ra,8(sp)
    800054c8:	00813023          	sd	s0,0(sp)
    800054cc:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    800054d0:	00003797          	auipc	a5,0x3
    800054d4:	4a87b783          	ld	a5,1192(a5) # 80008978 <_GLOBAL_OFFSET_TABLE_+0x90>
    800054d8:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    800054dc:	00200793          	li	a5,2
    800054e0:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    800054e4:	00000097          	auipc	ra,0x0
    800054e8:	fa0080e7          	jalr	-96(ra) # 80005484 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    800054ec:	ffffd097          	auipc	ra,0xffffd
    800054f0:	378080e7          	jalr	888(ra) # 80002864 <_ZN3PCB8dispatchEv>
}
    800054f4:	00813083          	ld	ra,8(sp)
    800054f8:	00013403          	ld	s0,0(sp)
    800054fc:	01010113          	addi	sp,sp,16
    80005500:	00008067          	ret

0000000080005504 <_ZN10KSemaphore4waitEv>:
    PCB::running->retFromClosedSem = false;
    80005504:	00003797          	auipc	a5,0x3
    80005508:	4747b783          	ld	a5,1140(a5) # 80008978 <_GLOBAL_OFFSET_TABLE_+0x90>
    8000550c:	0007b783          	ld	a5,0(a5)
    80005510:	04078c23          	sb	zero,88(a5)
    if(--val < 0)
    80005514:	01052783          	lw	a5,16(a0)
    80005518:	fff7879b          	addiw	a5,a5,-1
    8000551c:	00f52823          	sw	a5,16(a0)
    80005520:	02079713          	slli	a4,a5,0x20
    80005524:	00074663          	bltz	a4,80005530 <_ZN10KSemaphore4waitEv+0x2c>
}
    80005528:	00000513          	li	a0,0
    8000552c:	00008067          	ret
{
    80005530:	ff010113          	addi	sp,sp,-16
    80005534:	00113423          	sd	ra,8(sp)
    80005538:	00813023          	sd	s0,0(sp)
    8000553c:	01010413          	addi	s0,sp,16
        block();
    80005540:	00000097          	auipc	ra,0x0
    80005544:	f80080e7          	jalr	-128(ra) # 800054c0 <_ZN10KSemaphore5blockEv>
}
    80005548:	00000513          	li	a0,0
    8000554c:	00813083          	ld	ra,8(sp)
    80005550:	00013403          	ld	s0,0(sp)
    80005554:	01010113          	addi	sp,sp,16
    80005558:	00008067          	ret

000000008000555c <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    8000555c:	ff010113          	addi	sp,sp,-16
    80005560:	00813423          	sd	s0,8(sp)
    80005564:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80005568:	00053503          	ld	a0,0(a0)
    8000556c:	00813403          	ld	s0,8(sp)
    80005570:	01010113          	addi	sp,sp,16
    80005574:	00008067          	ret

0000000080005578 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80005578:	ff010113          	addi	sp,sp,-16
    8000557c:	00813423          	sd	s0,8(sp)
    80005580:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80005584:	00053783          	ld	a5,0(a0)
    80005588:	00078c63          	beqz	a5,800055a0 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    8000558c:	0087b703          	ld	a4,8(a5)
    80005590:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80005594:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80005598:	00053783          	ld	a5,0(a0)
    8000559c:	00078863          	beqz	a5,800055ac <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    800055a0:	00813403          	ld	s0,8(sp)
    800055a4:	01010113          	addi	sp,sp,16
    800055a8:	00008067          	ret
        tailBlocked =0;
    800055ac:	00053423          	sd	zero,8(a0)
    800055b0:	ff1ff06f          	j	800055a0 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

00000000800055b4 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    800055b4:	fe010113          	addi	sp,sp,-32
    800055b8:	00113c23          	sd	ra,24(sp)
    800055bc:	00813823          	sd	s0,16(sp)
    800055c0:	00913423          	sd	s1,8(sp)
    800055c4:	01213023          	sd	s2,0(sp)
    800055c8:	02010413          	addi	s0,sp,32
    800055cc:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    800055d0:	00090513          	mv	a0,s2
    800055d4:	00000097          	auipc	ra,0x0
    800055d8:	f88080e7          	jalr	-120(ra) # 8000555c <_ZN10KSemaphore15getFirstBlockedEv>
    800055dc:	00050493          	mv	s1,a0
    800055e0:	02050463          	beqz	a0,80005608 <_ZN10KSemaphoreD1Ev+0x54>
        removeFirstBlocked();
    800055e4:	00090513          	mv	a0,s2
    800055e8:	00000097          	auipc	ra,0x0
    800055ec:	f90080e7          	jalr	-112(ra) # 80005578 <_ZN10KSemaphore18removeFirstBlockedEv>
        pcb->retFromClosedSem = true;
    800055f0:	00100793          	li	a5,1
    800055f4:	04f48c23          	sb	a5,88(s1)
        Scheduler::put(pcb);
    800055f8:	00048513          	mv	a0,s1
    800055fc:	ffffe097          	auipc	ra,0xffffe
    80005600:	5e4080e7          	jalr	1508(ra) # 80003be0 <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80005604:	fcdff06f          	j	800055d0 <_ZN10KSemaphoreD1Ev+0x1c>
}
    80005608:	01813083          	ld	ra,24(sp)
    8000560c:	01013403          	ld	s0,16(sp)
    80005610:	00813483          	ld	s1,8(sp)
    80005614:	00013903          	ld	s2,0(sp)
    80005618:	02010113          	addi	sp,sp,32
    8000561c:	00008067          	ret

0000000080005620 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    80005620:	fe010113          	addi	sp,sp,-32
    80005624:	00113c23          	sd	ra,24(sp)
    80005628:	00813823          	sd	s0,16(sp)
    8000562c:	00913423          	sd	s1,8(sp)
    80005630:	01213023          	sd	s2,0(sp)
    80005634:	02010413          	addi	s0,sp,32
    80005638:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    8000563c:	00000097          	auipc	ra,0x0
    80005640:	f20080e7          	jalr	-224(ra) # 8000555c <_ZN10KSemaphore15getFirstBlockedEv>
    80005644:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80005648:	00090513          	mv	a0,s2
    8000564c:	00000097          	auipc	ra,0x0
    80005650:	f2c080e7          	jalr	-212(ra) # 80005578 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80005654:	00048863          	beqz	s1,80005664 <_ZN10KSemaphore7unblockEv+0x44>
    {
        Scheduler::put(fr);
    80005658:	00048513          	mv	a0,s1
    8000565c:	ffffe097          	auipc	ra,0xffffe
    80005660:	584080e7          	jalr	1412(ra) # 80003be0 <_ZN9Scheduler3putEP3PCB>
    }
}
    80005664:	01813083          	ld	ra,24(sp)
    80005668:	01013403          	ld	s0,16(sp)
    8000566c:	00813483          	ld	s1,8(sp)
    80005670:	00013903          	ld	s2,0(sp)
    80005674:	02010113          	addi	sp,sp,32
    80005678:	00008067          	ret

000000008000567c <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    8000567c:	01052783          	lw	a5,16(a0)
    80005680:	0017879b          	addiw	a5,a5,1
    80005684:	0007871b          	sext.w	a4,a5
    80005688:	00f52823          	sw	a5,16(a0)
    8000568c:	00e05663          	blez	a4,80005698 <_ZN10KSemaphore6signalEv+0x1c>
}
    80005690:	00000513          	li	a0,0
    80005694:	00008067          	ret
uint64 KSemaphore::signal() {
    80005698:	ff010113          	addi	sp,sp,-16
    8000569c:	00113423          	sd	ra,8(sp)
    800056a0:	00813023          	sd	s0,0(sp)
    800056a4:	01010413          	addi	s0,sp,16
        unblock();
    800056a8:	00000097          	auipc	ra,0x0
    800056ac:	f78080e7          	jalr	-136(ra) # 80005620 <_ZN10KSemaphore7unblockEv>
}
    800056b0:	00000513          	li	a0,0
    800056b4:	00813083          	ld	ra,8(sp)
    800056b8:	00013403          	ld	s0,0(sp)
    800056bc:	01010113          	addi	sp,sp,16
    800056c0:	00008067          	ret

00000000800056c4 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    800056c4:	ff010113          	addi	sp,sp,-16
    800056c8:	00113423          	sd	ra,8(sp)
    800056cc:	00813023          	sd	s0,0(sp)
    800056d0:	01010413          	addi	s0,sp,16
    return kmem_cache_alloc(Riscv::semaphoreCache);
    800056d4:	00003797          	auipc	a5,0x3
    800056d8:	2347b783          	ld	a5,564(a5) # 80008908 <_GLOBAL_OFFSET_TABLE_+0x20>
    800056dc:	0007b503          	ld	a0,0(a5)
    800056e0:	ffffc097          	auipc	ra,0xffffc
    800056e4:	504080e7          	jalr	1284(ra) # 80001be4 <_Z16kmem_cache_allocP12kmem_cache_s>
    //return MemoryAllocator::kmalloc(size);
}
    800056e8:	00813083          	ld	ra,8(sp)
    800056ec:	00013403          	ld	s0,0(sp)
    800056f0:	01010113          	addi	sp,sp,16
    800056f4:	00008067          	ret

00000000800056f8 <_ZN10KSemaphore14semOpenHandlerEv>:
{
    800056f8:	fd010113          	addi	sp,sp,-48
    800056fc:	02113423          	sd	ra,40(sp)
    80005700:	02813023          	sd	s0,32(sp)
    80005704:	00913c23          	sd	s1,24(sp)
    80005708:	01213823          	sd	s2,16(sp)
    8000570c:	01313423          	sd	s3,8(sp)
    80005710:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80005714:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    80005718:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    8000571c:	01800513          	li	a0,24
    80005720:	00000097          	auipc	ra,0x0
    80005724:	fa4080e7          	jalr	-92(ra) # 800056c4 <_ZN10KSemaphorenwEm>
    80005728:	00050493          	mv	s1,a0
    8000572c:	00050863          	beqz	a0,8000573c <_ZN10KSemaphore14semOpenHandlerEv+0x44>
    80005730:	0009859b          	sext.w	a1,s3
    80005734:	00000097          	auipc	ra,0x0
    80005738:	d2c080e7          	jalr	-724(ra) # 80005460 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    8000573c:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    80005740:	02048663          	beqz	s1,8000576c <_ZN10KSemaphore14semOpenHandlerEv+0x74>
            __asm__ volatile("li a0, 0");
    80005744:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80005748:	fffff097          	auipc	ra,0xfffff
    8000574c:	ed0080e7          	jalr	-304(ra) # 80004618 <_ZN5Riscv13w_a0_sscratchEv>
}
    80005750:	02813083          	ld	ra,40(sp)
    80005754:	02013403          	ld	s0,32(sp)
    80005758:	01813483          	ld	s1,24(sp)
    8000575c:	01013903          	ld	s2,16(sp)
    80005760:	00813983          	ld	s3,8(sp)
    80005764:	03010113          	addi	sp,sp,48
    80005768:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    8000576c:	fff00513          	li	a0,-1
    80005770:	fd9ff06f          	j	80005748 <_ZN10KSemaphore14semOpenHandlerEv+0x50>

0000000080005774 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    80005774:	ff010113          	addi	sp,sp,-16
    80005778:	00113423          	sd	ra,8(sp)
    8000577c:	00813023          	sd	s0,0(sp)
    80005780:	01010413          	addi	s0,sp,16
    80005784:	00050593          	mv	a1,a0
    kmem_cache_free(Riscv::semaphoreCache, p);
    80005788:	00003797          	auipc	a5,0x3
    8000578c:	1807b783          	ld	a5,384(a5) # 80008908 <_GLOBAL_OFFSET_TABLE_+0x20>
    80005790:	0007b503          	ld	a0,0(a5)
    80005794:	ffffc097          	auipc	ra,0xffffc
    80005798:	690080e7          	jalr	1680(ra) # 80001e24 <_Z15kmem_cache_freeP12kmem_cache_sPv>
    //MemoryAllocator::kfree(p);
}
    8000579c:	00813083          	ld	ra,8(sp)
    800057a0:	00013403          	ld	s0,0(sp)
    800057a4:	01010113          	addi	sp,sp,16
    800057a8:	00008067          	ret

00000000800057ac <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    800057ac:	ff010113          	addi	sp,sp,-16
    800057b0:	00113423          	sd	ra,8(sp)
    800057b4:	00813023          	sd	s0,0(sp)
    800057b8:	01010413          	addi	s0,sp,16
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    800057bc:	00058513          	mv	a0,a1
    kSem->wait();
    800057c0:	00000097          	auipc	ra,0x0
    800057c4:	d44080e7          	jalr	-700(ra) # 80005504 <_ZN10KSemaphore4waitEv>
    if(PCB::running->retFromClosedSem)
    800057c8:	00003797          	auipc	a5,0x3
    800057cc:	1b07b783          	ld	a5,432(a5) # 80008978 <_GLOBAL_OFFSET_TABLE_+0x90>
    800057d0:	0007b783          	ld	a5,0(a5)
    800057d4:	0587c783          	lbu	a5,88(a5)
    800057d8:	02078063          	beqz	a5,800057f8 <_ZN10KSemaphore14semWaitHandlerEv+0x4c>
        __asm__ volatile("li a0, 0x1");
    800057dc:	00100513          	li	a0,1
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
    800057e0:	fffff097          	auipc	ra,0xfffff
    800057e4:	e38080e7          	jalr	-456(ra) # 80004618 <_ZN5Riscv13w_a0_sscratchEv>
}
    800057e8:	00813083          	ld	ra,8(sp)
    800057ec:	00013403          	ld	s0,0(sp)
    800057f0:	01010113          	addi	sp,sp,16
    800057f4:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    800057f8:	00000513          	li	a0,0
    800057fc:	fe5ff06f          	j	800057e0 <_ZN10KSemaphore14semWaitHandlerEv+0x34>

0000000080005800 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler() {
    80005800:	ff010113          	addi	sp,sp,-16
    80005804:	00113423          	sd	ra,8(sp)
    80005808:	00813023          	sd	s0,0(sp)
    8000580c:	01010413          	addi	s0,sp,16
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80005810:	00058513          	mv	a0,a1
    if (kSem == 0)
    80005814:	02050463          	beqz	a0,8000583c <_ZN10KSemaphore16semSignalHandlerEv+0x3c>
    {
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        kSem->signal();
    80005818:	00000097          	auipc	ra,0x0
    8000581c:	e64080e7          	jalr	-412(ra) # 8000567c <_ZN10KSemaphore6signalEv>
        __asm__ volatile("li a0, 0x0");
    80005820:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80005824:	fffff097          	auipc	ra,0xfffff
    80005828:	df4080e7          	jalr	-524(ra) # 80004618 <_ZN5Riscv13w_a0_sscratchEv>
}
    8000582c:	00813083          	ld	ra,8(sp)
    80005830:	00013403          	ld	s0,0(sp)
    80005834:	01010113          	addi	sp,sp,16
    80005838:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    8000583c:	00100513          	li	a0,1
    80005840:	fe5ff06f          	j	80005824 <_ZN10KSemaphore16semSignalHandlerEv+0x24>

0000000080005844 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    80005844:	fe010113          	addi	sp,sp,-32
    80005848:	00113c23          	sd	ra,24(sp)
    8000584c:	00813823          	sd	s0,16(sp)
    80005850:	00913423          	sd	s1,8(sp)
    80005854:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80005858:	00058493          	mv	s1,a1
    delete kSem;
    8000585c:	00048e63          	beqz	s1,80005878 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    80005860:	00048513          	mv	a0,s1
    80005864:	00000097          	auipc	ra,0x0
    80005868:	d50080e7          	jalr	-688(ra) # 800055b4 <_ZN10KSemaphoreD1Ev>
    8000586c:	00048513          	mv	a0,s1
    80005870:	00000097          	auipc	ra,0x0
    80005874:	f04080e7          	jalr	-252(ra) # 80005774 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    80005878:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    8000587c:	fffff097          	auipc	ra,0xfffff
    80005880:	d9c080e7          	jalr	-612(ra) # 80004618 <_ZN5Riscv13w_a0_sscratchEv>
}
    80005884:	01813083          	ld	ra,24(sp)
    80005888:	01013403          	ld	s0,16(sp)
    8000588c:	00813483          	ld	s1,8(sp)
    80005890:	02010113          	addi	sp,sp,32
    80005894:	00008067          	ret

0000000080005898 <start>:
    80005898:	ff010113          	addi	sp,sp,-16
    8000589c:	00813423          	sd	s0,8(sp)
    800058a0:	01010413          	addi	s0,sp,16
    800058a4:	300027f3          	csrr	a5,mstatus
    800058a8:	ffffe737          	lui	a4,0xffffe
    800058ac:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffef7ff>
    800058b0:	00e7f7b3          	and	a5,a5,a4
    800058b4:	00001737          	lui	a4,0x1
    800058b8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800058bc:	00e7e7b3          	or	a5,a5,a4
    800058c0:	30079073          	csrw	mstatus,a5
    800058c4:	00000797          	auipc	a5,0x0
    800058c8:	16078793          	addi	a5,a5,352 # 80005a24 <system_main>
    800058cc:	34179073          	csrw	mepc,a5
    800058d0:	00000793          	li	a5,0
    800058d4:	18079073          	csrw	satp,a5
    800058d8:	000107b7          	lui	a5,0x10
    800058dc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800058e0:	30279073          	csrw	medeleg,a5
    800058e4:	30379073          	csrw	mideleg,a5
    800058e8:	104027f3          	csrr	a5,sie
    800058ec:	2227e793          	ori	a5,a5,546
    800058f0:	10479073          	csrw	sie,a5
    800058f4:	fff00793          	li	a5,-1
    800058f8:	00a7d793          	srli	a5,a5,0xa
    800058fc:	3b079073          	csrw	pmpaddr0,a5
    80005900:	00f00793          	li	a5,15
    80005904:	3a079073          	csrw	pmpcfg0,a5
    80005908:	f14027f3          	csrr	a5,mhartid
    8000590c:	0200c737          	lui	a4,0x200c
    80005910:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005914:	0007869b          	sext.w	a3,a5
    80005918:	00269713          	slli	a4,a3,0x2
    8000591c:	000f4637          	lui	a2,0xf4
    80005920:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005924:	00d70733          	add	a4,a4,a3
    80005928:	0037979b          	slliw	a5,a5,0x3
    8000592c:	020046b7          	lui	a3,0x2004
    80005930:	00d787b3          	add	a5,a5,a3
    80005934:	00c585b3          	add	a1,a1,a2
    80005938:	00371693          	slli	a3,a4,0x3
    8000593c:	00003717          	auipc	a4,0x3
    80005940:	1b470713          	addi	a4,a4,436 # 80008af0 <timer_scratch>
    80005944:	00b7b023          	sd	a1,0(a5)
    80005948:	00d70733          	add	a4,a4,a3
    8000594c:	00f73c23          	sd	a5,24(a4)
    80005950:	02c73023          	sd	a2,32(a4)
    80005954:	34071073          	csrw	mscratch,a4
    80005958:	00000797          	auipc	a5,0x0
    8000595c:	6e878793          	addi	a5,a5,1768 # 80006040 <timervec>
    80005960:	30579073          	csrw	mtvec,a5
    80005964:	300027f3          	csrr	a5,mstatus
    80005968:	0087e793          	ori	a5,a5,8
    8000596c:	30079073          	csrw	mstatus,a5
    80005970:	304027f3          	csrr	a5,mie
    80005974:	0807e793          	ori	a5,a5,128
    80005978:	30479073          	csrw	mie,a5
    8000597c:	f14027f3          	csrr	a5,mhartid
    80005980:	0007879b          	sext.w	a5,a5
    80005984:	00078213          	mv	tp,a5
    80005988:	30200073          	mret
    8000598c:	00813403          	ld	s0,8(sp)
    80005990:	01010113          	addi	sp,sp,16
    80005994:	00008067          	ret

0000000080005998 <timerinit>:
    80005998:	ff010113          	addi	sp,sp,-16
    8000599c:	00813423          	sd	s0,8(sp)
    800059a0:	01010413          	addi	s0,sp,16
    800059a4:	f14027f3          	csrr	a5,mhartid
    800059a8:	0200c737          	lui	a4,0x200c
    800059ac:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800059b0:	0007869b          	sext.w	a3,a5
    800059b4:	00269713          	slli	a4,a3,0x2
    800059b8:	000f4637          	lui	a2,0xf4
    800059bc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800059c0:	00d70733          	add	a4,a4,a3
    800059c4:	0037979b          	slliw	a5,a5,0x3
    800059c8:	020046b7          	lui	a3,0x2004
    800059cc:	00d787b3          	add	a5,a5,a3
    800059d0:	00c585b3          	add	a1,a1,a2
    800059d4:	00371693          	slli	a3,a4,0x3
    800059d8:	00003717          	auipc	a4,0x3
    800059dc:	11870713          	addi	a4,a4,280 # 80008af0 <timer_scratch>
    800059e0:	00b7b023          	sd	a1,0(a5)
    800059e4:	00d70733          	add	a4,a4,a3
    800059e8:	00f73c23          	sd	a5,24(a4)
    800059ec:	02c73023          	sd	a2,32(a4)
    800059f0:	34071073          	csrw	mscratch,a4
    800059f4:	00000797          	auipc	a5,0x0
    800059f8:	64c78793          	addi	a5,a5,1612 # 80006040 <timervec>
    800059fc:	30579073          	csrw	mtvec,a5
    80005a00:	300027f3          	csrr	a5,mstatus
    80005a04:	0087e793          	ori	a5,a5,8
    80005a08:	30079073          	csrw	mstatus,a5
    80005a0c:	304027f3          	csrr	a5,mie
    80005a10:	0807e793          	ori	a5,a5,128
    80005a14:	30479073          	csrw	mie,a5
    80005a18:	00813403          	ld	s0,8(sp)
    80005a1c:	01010113          	addi	sp,sp,16
    80005a20:	00008067          	ret

0000000080005a24 <system_main>:
    80005a24:	fe010113          	addi	sp,sp,-32
    80005a28:	00813823          	sd	s0,16(sp)
    80005a2c:	00913423          	sd	s1,8(sp)
    80005a30:	00113c23          	sd	ra,24(sp)
    80005a34:	02010413          	addi	s0,sp,32
    80005a38:	00000097          	auipc	ra,0x0
    80005a3c:	0c4080e7          	jalr	196(ra) # 80005afc <cpuid>
    80005a40:	00003497          	auipc	s1,0x3
    80005a44:	f8048493          	addi	s1,s1,-128 # 800089c0 <started>
    80005a48:	02050263          	beqz	a0,80005a6c <system_main+0x48>
    80005a4c:	0004a783          	lw	a5,0(s1)
    80005a50:	0007879b          	sext.w	a5,a5
    80005a54:	fe078ce3          	beqz	a5,80005a4c <system_main+0x28>
    80005a58:	0ff0000f          	fence
    80005a5c:	00003517          	auipc	a0,0x3
    80005a60:	b8c50513          	addi	a0,a0,-1140 # 800085e8 <CONSOLE_STATUS+0x5d8>
    80005a64:	00001097          	auipc	ra,0x1
    80005a68:	a78080e7          	jalr	-1416(ra) # 800064dc <panic>
    80005a6c:	00001097          	auipc	ra,0x1
    80005a70:	9cc080e7          	jalr	-1588(ra) # 80006438 <consoleinit>
    80005a74:	00001097          	auipc	ra,0x1
    80005a78:	158080e7          	jalr	344(ra) # 80006bcc <printfinit>
    80005a7c:	00002517          	auipc	a0,0x2
    80005a80:	72450513          	addi	a0,a0,1828 # 800081a0 <CONSOLE_STATUS+0x190>
    80005a84:	00001097          	auipc	ra,0x1
    80005a88:	ab4080e7          	jalr	-1356(ra) # 80006538 <__printf>
    80005a8c:	00003517          	auipc	a0,0x3
    80005a90:	b2c50513          	addi	a0,a0,-1236 # 800085b8 <CONSOLE_STATUS+0x5a8>
    80005a94:	00001097          	auipc	ra,0x1
    80005a98:	aa4080e7          	jalr	-1372(ra) # 80006538 <__printf>
    80005a9c:	00002517          	auipc	a0,0x2
    80005aa0:	70450513          	addi	a0,a0,1796 # 800081a0 <CONSOLE_STATUS+0x190>
    80005aa4:	00001097          	auipc	ra,0x1
    80005aa8:	a94080e7          	jalr	-1388(ra) # 80006538 <__printf>
    80005aac:	00001097          	auipc	ra,0x1
    80005ab0:	4ac080e7          	jalr	1196(ra) # 80006f58 <kinit>
    80005ab4:	00000097          	auipc	ra,0x0
    80005ab8:	148080e7          	jalr	328(ra) # 80005bfc <trapinit>
    80005abc:	00000097          	auipc	ra,0x0
    80005ac0:	16c080e7          	jalr	364(ra) # 80005c28 <trapinithart>
    80005ac4:	00000097          	auipc	ra,0x0
    80005ac8:	5bc080e7          	jalr	1468(ra) # 80006080 <plicinit>
    80005acc:	00000097          	auipc	ra,0x0
    80005ad0:	5dc080e7          	jalr	1500(ra) # 800060a8 <plicinithart>
    80005ad4:	00000097          	auipc	ra,0x0
    80005ad8:	078080e7          	jalr	120(ra) # 80005b4c <userinit>
    80005adc:	0ff0000f          	fence
    80005ae0:	00100793          	li	a5,1
    80005ae4:	00003517          	auipc	a0,0x3
    80005ae8:	aec50513          	addi	a0,a0,-1300 # 800085d0 <CONSOLE_STATUS+0x5c0>
    80005aec:	00f4a023          	sw	a5,0(s1)
    80005af0:	00001097          	auipc	ra,0x1
    80005af4:	a48080e7          	jalr	-1464(ra) # 80006538 <__printf>
    80005af8:	0000006f          	j	80005af8 <system_main+0xd4>

0000000080005afc <cpuid>:
    80005afc:	ff010113          	addi	sp,sp,-16
    80005b00:	00813423          	sd	s0,8(sp)
    80005b04:	01010413          	addi	s0,sp,16
    80005b08:	00020513          	mv	a0,tp
    80005b0c:	00813403          	ld	s0,8(sp)
    80005b10:	0005051b          	sext.w	a0,a0
    80005b14:	01010113          	addi	sp,sp,16
    80005b18:	00008067          	ret

0000000080005b1c <mycpu>:
    80005b1c:	ff010113          	addi	sp,sp,-16
    80005b20:	00813423          	sd	s0,8(sp)
    80005b24:	01010413          	addi	s0,sp,16
    80005b28:	00020793          	mv	a5,tp
    80005b2c:	00813403          	ld	s0,8(sp)
    80005b30:	0007879b          	sext.w	a5,a5
    80005b34:	00779793          	slli	a5,a5,0x7
    80005b38:	00004517          	auipc	a0,0x4
    80005b3c:	fe850513          	addi	a0,a0,-24 # 80009b20 <cpus>
    80005b40:	00f50533          	add	a0,a0,a5
    80005b44:	01010113          	addi	sp,sp,16
    80005b48:	00008067          	ret

0000000080005b4c <userinit>:
    80005b4c:	ff010113          	addi	sp,sp,-16
    80005b50:	00813423          	sd	s0,8(sp)
    80005b54:	01010413          	addi	s0,sp,16
    80005b58:	00813403          	ld	s0,8(sp)
    80005b5c:	01010113          	addi	sp,sp,16
    80005b60:	ffffe317          	auipc	t1,0xffffe
    80005b64:	18030067          	jr	384(t1) # 80003ce0 <main>

0000000080005b68 <either_copyout>:
    80005b68:	ff010113          	addi	sp,sp,-16
    80005b6c:	00813023          	sd	s0,0(sp)
    80005b70:	00113423          	sd	ra,8(sp)
    80005b74:	01010413          	addi	s0,sp,16
    80005b78:	02051663          	bnez	a0,80005ba4 <either_copyout+0x3c>
    80005b7c:	00058513          	mv	a0,a1
    80005b80:	00060593          	mv	a1,a2
    80005b84:	0006861b          	sext.w	a2,a3
    80005b88:	00002097          	auipc	ra,0x2
    80005b8c:	c5c080e7          	jalr	-932(ra) # 800077e4 <__memmove>
    80005b90:	00813083          	ld	ra,8(sp)
    80005b94:	00013403          	ld	s0,0(sp)
    80005b98:	00000513          	li	a0,0
    80005b9c:	01010113          	addi	sp,sp,16
    80005ba0:	00008067          	ret
    80005ba4:	00003517          	auipc	a0,0x3
    80005ba8:	a6c50513          	addi	a0,a0,-1428 # 80008610 <CONSOLE_STATUS+0x600>
    80005bac:	00001097          	auipc	ra,0x1
    80005bb0:	930080e7          	jalr	-1744(ra) # 800064dc <panic>

0000000080005bb4 <either_copyin>:
    80005bb4:	ff010113          	addi	sp,sp,-16
    80005bb8:	00813023          	sd	s0,0(sp)
    80005bbc:	00113423          	sd	ra,8(sp)
    80005bc0:	01010413          	addi	s0,sp,16
    80005bc4:	02059463          	bnez	a1,80005bec <either_copyin+0x38>
    80005bc8:	00060593          	mv	a1,a2
    80005bcc:	0006861b          	sext.w	a2,a3
    80005bd0:	00002097          	auipc	ra,0x2
    80005bd4:	c14080e7          	jalr	-1004(ra) # 800077e4 <__memmove>
    80005bd8:	00813083          	ld	ra,8(sp)
    80005bdc:	00013403          	ld	s0,0(sp)
    80005be0:	00000513          	li	a0,0
    80005be4:	01010113          	addi	sp,sp,16
    80005be8:	00008067          	ret
    80005bec:	00003517          	auipc	a0,0x3
    80005bf0:	a4c50513          	addi	a0,a0,-1460 # 80008638 <CONSOLE_STATUS+0x628>
    80005bf4:	00001097          	auipc	ra,0x1
    80005bf8:	8e8080e7          	jalr	-1816(ra) # 800064dc <panic>

0000000080005bfc <trapinit>:
    80005bfc:	ff010113          	addi	sp,sp,-16
    80005c00:	00813423          	sd	s0,8(sp)
    80005c04:	01010413          	addi	s0,sp,16
    80005c08:	00813403          	ld	s0,8(sp)
    80005c0c:	00003597          	auipc	a1,0x3
    80005c10:	a5458593          	addi	a1,a1,-1452 # 80008660 <CONSOLE_STATUS+0x650>
    80005c14:	00004517          	auipc	a0,0x4
    80005c18:	f8c50513          	addi	a0,a0,-116 # 80009ba0 <tickslock>
    80005c1c:	01010113          	addi	sp,sp,16
    80005c20:	00001317          	auipc	t1,0x1
    80005c24:	5c830067          	jr	1480(t1) # 800071e8 <initlock>

0000000080005c28 <trapinithart>:
    80005c28:	ff010113          	addi	sp,sp,-16
    80005c2c:	00813423          	sd	s0,8(sp)
    80005c30:	01010413          	addi	s0,sp,16
    80005c34:	00000797          	auipc	a5,0x0
    80005c38:	2fc78793          	addi	a5,a5,764 # 80005f30 <kernelvec>
    80005c3c:	10579073          	csrw	stvec,a5
    80005c40:	00813403          	ld	s0,8(sp)
    80005c44:	01010113          	addi	sp,sp,16
    80005c48:	00008067          	ret

0000000080005c4c <usertrap>:
    80005c4c:	ff010113          	addi	sp,sp,-16
    80005c50:	00813423          	sd	s0,8(sp)
    80005c54:	01010413          	addi	s0,sp,16
    80005c58:	00813403          	ld	s0,8(sp)
    80005c5c:	01010113          	addi	sp,sp,16
    80005c60:	00008067          	ret

0000000080005c64 <usertrapret>:
    80005c64:	ff010113          	addi	sp,sp,-16
    80005c68:	00813423          	sd	s0,8(sp)
    80005c6c:	01010413          	addi	s0,sp,16
    80005c70:	00813403          	ld	s0,8(sp)
    80005c74:	01010113          	addi	sp,sp,16
    80005c78:	00008067          	ret

0000000080005c7c <kerneltrap>:
    80005c7c:	fe010113          	addi	sp,sp,-32
    80005c80:	00813823          	sd	s0,16(sp)
    80005c84:	00113c23          	sd	ra,24(sp)
    80005c88:	00913423          	sd	s1,8(sp)
    80005c8c:	02010413          	addi	s0,sp,32
    80005c90:	142025f3          	csrr	a1,scause
    80005c94:	100027f3          	csrr	a5,sstatus
    80005c98:	0027f793          	andi	a5,a5,2
    80005c9c:	10079c63          	bnez	a5,80005db4 <kerneltrap+0x138>
    80005ca0:	142027f3          	csrr	a5,scause
    80005ca4:	0207ce63          	bltz	a5,80005ce0 <kerneltrap+0x64>
    80005ca8:	00003517          	auipc	a0,0x3
    80005cac:	a0050513          	addi	a0,a0,-1536 # 800086a8 <CONSOLE_STATUS+0x698>
    80005cb0:	00001097          	auipc	ra,0x1
    80005cb4:	888080e7          	jalr	-1912(ra) # 80006538 <__printf>
    80005cb8:	141025f3          	csrr	a1,sepc
    80005cbc:	14302673          	csrr	a2,stval
    80005cc0:	00003517          	auipc	a0,0x3
    80005cc4:	9f850513          	addi	a0,a0,-1544 # 800086b8 <CONSOLE_STATUS+0x6a8>
    80005cc8:	00001097          	auipc	ra,0x1
    80005ccc:	870080e7          	jalr	-1936(ra) # 80006538 <__printf>
    80005cd0:	00003517          	auipc	a0,0x3
    80005cd4:	a0050513          	addi	a0,a0,-1536 # 800086d0 <CONSOLE_STATUS+0x6c0>
    80005cd8:	00001097          	auipc	ra,0x1
    80005cdc:	804080e7          	jalr	-2044(ra) # 800064dc <panic>
    80005ce0:	0ff7f713          	andi	a4,a5,255
    80005ce4:	00900693          	li	a3,9
    80005ce8:	04d70063          	beq	a4,a3,80005d28 <kerneltrap+0xac>
    80005cec:	fff00713          	li	a4,-1
    80005cf0:	03f71713          	slli	a4,a4,0x3f
    80005cf4:	00170713          	addi	a4,a4,1
    80005cf8:	fae798e3          	bne	a5,a4,80005ca8 <kerneltrap+0x2c>
    80005cfc:	00000097          	auipc	ra,0x0
    80005d00:	e00080e7          	jalr	-512(ra) # 80005afc <cpuid>
    80005d04:	06050663          	beqz	a0,80005d70 <kerneltrap+0xf4>
    80005d08:	144027f3          	csrr	a5,sip
    80005d0c:	ffd7f793          	andi	a5,a5,-3
    80005d10:	14479073          	csrw	sip,a5
    80005d14:	01813083          	ld	ra,24(sp)
    80005d18:	01013403          	ld	s0,16(sp)
    80005d1c:	00813483          	ld	s1,8(sp)
    80005d20:	02010113          	addi	sp,sp,32
    80005d24:	00008067          	ret
    80005d28:	00000097          	auipc	ra,0x0
    80005d2c:	3cc080e7          	jalr	972(ra) # 800060f4 <plic_claim>
    80005d30:	00a00793          	li	a5,10
    80005d34:	00050493          	mv	s1,a0
    80005d38:	06f50863          	beq	a0,a5,80005da8 <kerneltrap+0x12c>
    80005d3c:	fc050ce3          	beqz	a0,80005d14 <kerneltrap+0x98>
    80005d40:	00050593          	mv	a1,a0
    80005d44:	00003517          	auipc	a0,0x3
    80005d48:	94450513          	addi	a0,a0,-1724 # 80008688 <CONSOLE_STATUS+0x678>
    80005d4c:	00000097          	auipc	ra,0x0
    80005d50:	7ec080e7          	jalr	2028(ra) # 80006538 <__printf>
    80005d54:	01013403          	ld	s0,16(sp)
    80005d58:	01813083          	ld	ra,24(sp)
    80005d5c:	00048513          	mv	a0,s1
    80005d60:	00813483          	ld	s1,8(sp)
    80005d64:	02010113          	addi	sp,sp,32
    80005d68:	00000317          	auipc	t1,0x0
    80005d6c:	3c430067          	jr	964(t1) # 8000612c <plic_complete>
    80005d70:	00004517          	auipc	a0,0x4
    80005d74:	e3050513          	addi	a0,a0,-464 # 80009ba0 <tickslock>
    80005d78:	00001097          	auipc	ra,0x1
    80005d7c:	494080e7          	jalr	1172(ra) # 8000720c <acquire>
    80005d80:	00003717          	auipc	a4,0x3
    80005d84:	c4470713          	addi	a4,a4,-956 # 800089c4 <ticks>
    80005d88:	00072783          	lw	a5,0(a4)
    80005d8c:	00004517          	auipc	a0,0x4
    80005d90:	e1450513          	addi	a0,a0,-492 # 80009ba0 <tickslock>
    80005d94:	0017879b          	addiw	a5,a5,1
    80005d98:	00f72023          	sw	a5,0(a4)
    80005d9c:	00001097          	auipc	ra,0x1
    80005da0:	53c080e7          	jalr	1340(ra) # 800072d8 <release>
    80005da4:	f65ff06f          	j	80005d08 <kerneltrap+0x8c>
    80005da8:	00001097          	auipc	ra,0x1
    80005dac:	098080e7          	jalr	152(ra) # 80006e40 <uartintr>
    80005db0:	fa5ff06f          	j	80005d54 <kerneltrap+0xd8>
    80005db4:	00003517          	auipc	a0,0x3
    80005db8:	8b450513          	addi	a0,a0,-1868 # 80008668 <CONSOLE_STATUS+0x658>
    80005dbc:	00000097          	auipc	ra,0x0
    80005dc0:	720080e7          	jalr	1824(ra) # 800064dc <panic>

0000000080005dc4 <clockintr>:
    80005dc4:	fe010113          	addi	sp,sp,-32
    80005dc8:	00813823          	sd	s0,16(sp)
    80005dcc:	00913423          	sd	s1,8(sp)
    80005dd0:	00113c23          	sd	ra,24(sp)
    80005dd4:	02010413          	addi	s0,sp,32
    80005dd8:	00004497          	auipc	s1,0x4
    80005ddc:	dc848493          	addi	s1,s1,-568 # 80009ba0 <tickslock>
    80005de0:	00048513          	mv	a0,s1
    80005de4:	00001097          	auipc	ra,0x1
    80005de8:	428080e7          	jalr	1064(ra) # 8000720c <acquire>
    80005dec:	00003717          	auipc	a4,0x3
    80005df0:	bd870713          	addi	a4,a4,-1064 # 800089c4 <ticks>
    80005df4:	00072783          	lw	a5,0(a4)
    80005df8:	01013403          	ld	s0,16(sp)
    80005dfc:	01813083          	ld	ra,24(sp)
    80005e00:	00048513          	mv	a0,s1
    80005e04:	0017879b          	addiw	a5,a5,1
    80005e08:	00813483          	ld	s1,8(sp)
    80005e0c:	00f72023          	sw	a5,0(a4)
    80005e10:	02010113          	addi	sp,sp,32
    80005e14:	00001317          	auipc	t1,0x1
    80005e18:	4c430067          	jr	1220(t1) # 800072d8 <release>

0000000080005e1c <devintr>:
    80005e1c:	142027f3          	csrr	a5,scause
    80005e20:	00000513          	li	a0,0
    80005e24:	0007c463          	bltz	a5,80005e2c <devintr+0x10>
    80005e28:	00008067          	ret
    80005e2c:	fe010113          	addi	sp,sp,-32
    80005e30:	00813823          	sd	s0,16(sp)
    80005e34:	00113c23          	sd	ra,24(sp)
    80005e38:	00913423          	sd	s1,8(sp)
    80005e3c:	02010413          	addi	s0,sp,32
    80005e40:	0ff7f713          	andi	a4,a5,255
    80005e44:	00900693          	li	a3,9
    80005e48:	04d70c63          	beq	a4,a3,80005ea0 <devintr+0x84>
    80005e4c:	fff00713          	li	a4,-1
    80005e50:	03f71713          	slli	a4,a4,0x3f
    80005e54:	00170713          	addi	a4,a4,1
    80005e58:	00e78c63          	beq	a5,a4,80005e70 <devintr+0x54>
    80005e5c:	01813083          	ld	ra,24(sp)
    80005e60:	01013403          	ld	s0,16(sp)
    80005e64:	00813483          	ld	s1,8(sp)
    80005e68:	02010113          	addi	sp,sp,32
    80005e6c:	00008067          	ret
    80005e70:	00000097          	auipc	ra,0x0
    80005e74:	c8c080e7          	jalr	-884(ra) # 80005afc <cpuid>
    80005e78:	06050663          	beqz	a0,80005ee4 <devintr+0xc8>
    80005e7c:	144027f3          	csrr	a5,sip
    80005e80:	ffd7f793          	andi	a5,a5,-3
    80005e84:	14479073          	csrw	sip,a5
    80005e88:	01813083          	ld	ra,24(sp)
    80005e8c:	01013403          	ld	s0,16(sp)
    80005e90:	00813483          	ld	s1,8(sp)
    80005e94:	00200513          	li	a0,2
    80005e98:	02010113          	addi	sp,sp,32
    80005e9c:	00008067          	ret
    80005ea0:	00000097          	auipc	ra,0x0
    80005ea4:	254080e7          	jalr	596(ra) # 800060f4 <plic_claim>
    80005ea8:	00a00793          	li	a5,10
    80005eac:	00050493          	mv	s1,a0
    80005eb0:	06f50663          	beq	a0,a5,80005f1c <devintr+0x100>
    80005eb4:	00100513          	li	a0,1
    80005eb8:	fa0482e3          	beqz	s1,80005e5c <devintr+0x40>
    80005ebc:	00048593          	mv	a1,s1
    80005ec0:	00002517          	auipc	a0,0x2
    80005ec4:	7c850513          	addi	a0,a0,1992 # 80008688 <CONSOLE_STATUS+0x678>
    80005ec8:	00000097          	auipc	ra,0x0
    80005ecc:	670080e7          	jalr	1648(ra) # 80006538 <__printf>
    80005ed0:	00048513          	mv	a0,s1
    80005ed4:	00000097          	auipc	ra,0x0
    80005ed8:	258080e7          	jalr	600(ra) # 8000612c <plic_complete>
    80005edc:	00100513          	li	a0,1
    80005ee0:	f7dff06f          	j	80005e5c <devintr+0x40>
    80005ee4:	00004517          	auipc	a0,0x4
    80005ee8:	cbc50513          	addi	a0,a0,-836 # 80009ba0 <tickslock>
    80005eec:	00001097          	auipc	ra,0x1
    80005ef0:	320080e7          	jalr	800(ra) # 8000720c <acquire>
    80005ef4:	00003717          	auipc	a4,0x3
    80005ef8:	ad070713          	addi	a4,a4,-1328 # 800089c4 <ticks>
    80005efc:	00072783          	lw	a5,0(a4)
    80005f00:	00004517          	auipc	a0,0x4
    80005f04:	ca050513          	addi	a0,a0,-864 # 80009ba0 <tickslock>
    80005f08:	0017879b          	addiw	a5,a5,1
    80005f0c:	00f72023          	sw	a5,0(a4)
    80005f10:	00001097          	auipc	ra,0x1
    80005f14:	3c8080e7          	jalr	968(ra) # 800072d8 <release>
    80005f18:	f65ff06f          	j	80005e7c <devintr+0x60>
    80005f1c:	00001097          	auipc	ra,0x1
    80005f20:	f24080e7          	jalr	-220(ra) # 80006e40 <uartintr>
    80005f24:	fadff06f          	j	80005ed0 <devintr+0xb4>
	...

0000000080005f30 <kernelvec>:
    80005f30:	f0010113          	addi	sp,sp,-256
    80005f34:	00113023          	sd	ra,0(sp)
    80005f38:	00213423          	sd	sp,8(sp)
    80005f3c:	00313823          	sd	gp,16(sp)
    80005f40:	00413c23          	sd	tp,24(sp)
    80005f44:	02513023          	sd	t0,32(sp)
    80005f48:	02613423          	sd	t1,40(sp)
    80005f4c:	02713823          	sd	t2,48(sp)
    80005f50:	02813c23          	sd	s0,56(sp)
    80005f54:	04913023          	sd	s1,64(sp)
    80005f58:	04a13423          	sd	a0,72(sp)
    80005f5c:	04b13823          	sd	a1,80(sp)
    80005f60:	04c13c23          	sd	a2,88(sp)
    80005f64:	06d13023          	sd	a3,96(sp)
    80005f68:	06e13423          	sd	a4,104(sp)
    80005f6c:	06f13823          	sd	a5,112(sp)
    80005f70:	07013c23          	sd	a6,120(sp)
    80005f74:	09113023          	sd	a7,128(sp)
    80005f78:	09213423          	sd	s2,136(sp)
    80005f7c:	09313823          	sd	s3,144(sp)
    80005f80:	09413c23          	sd	s4,152(sp)
    80005f84:	0b513023          	sd	s5,160(sp)
    80005f88:	0b613423          	sd	s6,168(sp)
    80005f8c:	0b713823          	sd	s7,176(sp)
    80005f90:	0b813c23          	sd	s8,184(sp)
    80005f94:	0d913023          	sd	s9,192(sp)
    80005f98:	0da13423          	sd	s10,200(sp)
    80005f9c:	0db13823          	sd	s11,208(sp)
    80005fa0:	0dc13c23          	sd	t3,216(sp)
    80005fa4:	0fd13023          	sd	t4,224(sp)
    80005fa8:	0fe13423          	sd	t5,232(sp)
    80005fac:	0ff13823          	sd	t6,240(sp)
    80005fb0:	ccdff0ef          	jal	ra,80005c7c <kerneltrap>
    80005fb4:	00013083          	ld	ra,0(sp)
    80005fb8:	00813103          	ld	sp,8(sp)
    80005fbc:	01013183          	ld	gp,16(sp)
    80005fc0:	02013283          	ld	t0,32(sp)
    80005fc4:	02813303          	ld	t1,40(sp)
    80005fc8:	03013383          	ld	t2,48(sp)
    80005fcc:	03813403          	ld	s0,56(sp)
    80005fd0:	04013483          	ld	s1,64(sp)
    80005fd4:	04813503          	ld	a0,72(sp)
    80005fd8:	05013583          	ld	a1,80(sp)
    80005fdc:	05813603          	ld	a2,88(sp)
    80005fe0:	06013683          	ld	a3,96(sp)
    80005fe4:	06813703          	ld	a4,104(sp)
    80005fe8:	07013783          	ld	a5,112(sp)
    80005fec:	07813803          	ld	a6,120(sp)
    80005ff0:	08013883          	ld	a7,128(sp)
    80005ff4:	08813903          	ld	s2,136(sp)
    80005ff8:	09013983          	ld	s3,144(sp)
    80005ffc:	09813a03          	ld	s4,152(sp)
    80006000:	0a013a83          	ld	s5,160(sp)
    80006004:	0a813b03          	ld	s6,168(sp)
    80006008:	0b013b83          	ld	s7,176(sp)
    8000600c:	0b813c03          	ld	s8,184(sp)
    80006010:	0c013c83          	ld	s9,192(sp)
    80006014:	0c813d03          	ld	s10,200(sp)
    80006018:	0d013d83          	ld	s11,208(sp)
    8000601c:	0d813e03          	ld	t3,216(sp)
    80006020:	0e013e83          	ld	t4,224(sp)
    80006024:	0e813f03          	ld	t5,232(sp)
    80006028:	0f013f83          	ld	t6,240(sp)
    8000602c:	10010113          	addi	sp,sp,256
    80006030:	10200073          	sret
    80006034:	00000013          	nop
    80006038:	00000013          	nop
    8000603c:	00000013          	nop

0000000080006040 <timervec>:
    80006040:	34051573          	csrrw	a0,mscratch,a0
    80006044:	00b53023          	sd	a1,0(a0)
    80006048:	00c53423          	sd	a2,8(a0)
    8000604c:	00d53823          	sd	a3,16(a0)
    80006050:	01853583          	ld	a1,24(a0)
    80006054:	02053603          	ld	a2,32(a0)
    80006058:	0005b683          	ld	a3,0(a1)
    8000605c:	00c686b3          	add	a3,a3,a2
    80006060:	00d5b023          	sd	a3,0(a1)
    80006064:	00200593          	li	a1,2
    80006068:	14459073          	csrw	sip,a1
    8000606c:	01053683          	ld	a3,16(a0)
    80006070:	00853603          	ld	a2,8(a0)
    80006074:	00053583          	ld	a1,0(a0)
    80006078:	34051573          	csrrw	a0,mscratch,a0
    8000607c:	30200073          	mret

0000000080006080 <plicinit>:
    80006080:	ff010113          	addi	sp,sp,-16
    80006084:	00813423          	sd	s0,8(sp)
    80006088:	01010413          	addi	s0,sp,16
    8000608c:	00813403          	ld	s0,8(sp)
    80006090:	0c0007b7          	lui	a5,0xc000
    80006094:	00100713          	li	a4,1
    80006098:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000609c:	00e7a223          	sw	a4,4(a5)
    800060a0:	01010113          	addi	sp,sp,16
    800060a4:	00008067          	ret

00000000800060a8 <plicinithart>:
    800060a8:	ff010113          	addi	sp,sp,-16
    800060ac:	00813023          	sd	s0,0(sp)
    800060b0:	00113423          	sd	ra,8(sp)
    800060b4:	01010413          	addi	s0,sp,16
    800060b8:	00000097          	auipc	ra,0x0
    800060bc:	a44080e7          	jalr	-1468(ra) # 80005afc <cpuid>
    800060c0:	0085171b          	slliw	a4,a0,0x8
    800060c4:	0c0027b7          	lui	a5,0xc002
    800060c8:	00e787b3          	add	a5,a5,a4
    800060cc:	40200713          	li	a4,1026
    800060d0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800060d4:	00813083          	ld	ra,8(sp)
    800060d8:	00013403          	ld	s0,0(sp)
    800060dc:	00d5151b          	slliw	a0,a0,0xd
    800060e0:	0c2017b7          	lui	a5,0xc201
    800060e4:	00a78533          	add	a0,a5,a0
    800060e8:	00052023          	sw	zero,0(a0)
    800060ec:	01010113          	addi	sp,sp,16
    800060f0:	00008067          	ret

00000000800060f4 <plic_claim>:
    800060f4:	ff010113          	addi	sp,sp,-16
    800060f8:	00813023          	sd	s0,0(sp)
    800060fc:	00113423          	sd	ra,8(sp)
    80006100:	01010413          	addi	s0,sp,16
    80006104:	00000097          	auipc	ra,0x0
    80006108:	9f8080e7          	jalr	-1544(ra) # 80005afc <cpuid>
    8000610c:	00813083          	ld	ra,8(sp)
    80006110:	00013403          	ld	s0,0(sp)
    80006114:	00d5151b          	slliw	a0,a0,0xd
    80006118:	0c2017b7          	lui	a5,0xc201
    8000611c:	00a78533          	add	a0,a5,a0
    80006120:	00452503          	lw	a0,4(a0)
    80006124:	01010113          	addi	sp,sp,16
    80006128:	00008067          	ret

000000008000612c <plic_complete>:
    8000612c:	fe010113          	addi	sp,sp,-32
    80006130:	00813823          	sd	s0,16(sp)
    80006134:	00913423          	sd	s1,8(sp)
    80006138:	00113c23          	sd	ra,24(sp)
    8000613c:	02010413          	addi	s0,sp,32
    80006140:	00050493          	mv	s1,a0
    80006144:	00000097          	auipc	ra,0x0
    80006148:	9b8080e7          	jalr	-1608(ra) # 80005afc <cpuid>
    8000614c:	01813083          	ld	ra,24(sp)
    80006150:	01013403          	ld	s0,16(sp)
    80006154:	00d5179b          	slliw	a5,a0,0xd
    80006158:	0c201737          	lui	a4,0xc201
    8000615c:	00f707b3          	add	a5,a4,a5
    80006160:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006164:	00813483          	ld	s1,8(sp)
    80006168:	02010113          	addi	sp,sp,32
    8000616c:	00008067          	ret

0000000080006170 <consolewrite>:
    80006170:	fb010113          	addi	sp,sp,-80
    80006174:	04813023          	sd	s0,64(sp)
    80006178:	04113423          	sd	ra,72(sp)
    8000617c:	02913c23          	sd	s1,56(sp)
    80006180:	03213823          	sd	s2,48(sp)
    80006184:	03313423          	sd	s3,40(sp)
    80006188:	03413023          	sd	s4,32(sp)
    8000618c:	01513c23          	sd	s5,24(sp)
    80006190:	05010413          	addi	s0,sp,80
    80006194:	06c05c63          	blez	a2,8000620c <consolewrite+0x9c>
    80006198:	00060993          	mv	s3,a2
    8000619c:	00050a13          	mv	s4,a0
    800061a0:	00058493          	mv	s1,a1
    800061a4:	00000913          	li	s2,0
    800061a8:	fff00a93          	li	s5,-1
    800061ac:	01c0006f          	j	800061c8 <consolewrite+0x58>
    800061b0:	fbf44503          	lbu	a0,-65(s0)
    800061b4:	0019091b          	addiw	s2,s2,1
    800061b8:	00148493          	addi	s1,s1,1
    800061bc:	00001097          	auipc	ra,0x1
    800061c0:	a9c080e7          	jalr	-1380(ra) # 80006c58 <uartputc>
    800061c4:	03298063          	beq	s3,s2,800061e4 <consolewrite+0x74>
    800061c8:	00048613          	mv	a2,s1
    800061cc:	00100693          	li	a3,1
    800061d0:	000a0593          	mv	a1,s4
    800061d4:	fbf40513          	addi	a0,s0,-65
    800061d8:	00000097          	auipc	ra,0x0
    800061dc:	9dc080e7          	jalr	-1572(ra) # 80005bb4 <either_copyin>
    800061e0:	fd5518e3          	bne	a0,s5,800061b0 <consolewrite+0x40>
    800061e4:	04813083          	ld	ra,72(sp)
    800061e8:	04013403          	ld	s0,64(sp)
    800061ec:	03813483          	ld	s1,56(sp)
    800061f0:	02813983          	ld	s3,40(sp)
    800061f4:	02013a03          	ld	s4,32(sp)
    800061f8:	01813a83          	ld	s5,24(sp)
    800061fc:	00090513          	mv	a0,s2
    80006200:	03013903          	ld	s2,48(sp)
    80006204:	05010113          	addi	sp,sp,80
    80006208:	00008067          	ret
    8000620c:	00000913          	li	s2,0
    80006210:	fd5ff06f          	j	800061e4 <consolewrite+0x74>

0000000080006214 <consoleread>:
    80006214:	f9010113          	addi	sp,sp,-112
    80006218:	06813023          	sd	s0,96(sp)
    8000621c:	04913c23          	sd	s1,88(sp)
    80006220:	05213823          	sd	s2,80(sp)
    80006224:	05313423          	sd	s3,72(sp)
    80006228:	05413023          	sd	s4,64(sp)
    8000622c:	03513c23          	sd	s5,56(sp)
    80006230:	03613823          	sd	s6,48(sp)
    80006234:	03713423          	sd	s7,40(sp)
    80006238:	03813023          	sd	s8,32(sp)
    8000623c:	06113423          	sd	ra,104(sp)
    80006240:	01913c23          	sd	s9,24(sp)
    80006244:	07010413          	addi	s0,sp,112
    80006248:	00060b93          	mv	s7,a2
    8000624c:	00050913          	mv	s2,a0
    80006250:	00058c13          	mv	s8,a1
    80006254:	00060b1b          	sext.w	s6,a2
    80006258:	00004497          	auipc	s1,0x4
    8000625c:	97048493          	addi	s1,s1,-1680 # 80009bc8 <cons>
    80006260:	00400993          	li	s3,4
    80006264:	fff00a13          	li	s4,-1
    80006268:	00a00a93          	li	s5,10
    8000626c:	05705e63          	blez	s7,800062c8 <consoleread+0xb4>
    80006270:	09c4a703          	lw	a4,156(s1)
    80006274:	0984a783          	lw	a5,152(s1)
    80006278:	0007071b          	sext.w	a4,a4
    8000627c:	08e78463          	beq	a5,a4,80006304 <consoleread+0xf0>
    80006280:	07f7f713          	andi	a4,a5,127
    80006284:	00e48733          	add	a4,s1,a4
    80006288:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000628c:	0017869b          	addiw	a3,a5,1
    80006290:	08d4ac23          	sw	a3,152(s1)
    80006294:	00070c9b          	sext.w	s9,a4
    80006298:	0b370663          	beq	a4,s3,80006344 <consoleread+0x130>
    8000629c:	00100693          	li	a3,1
    800062a0:	f9f40613          	addi	a2,s0,-97
    800062a4:	000c0593          	mv	a1,s8
    800062a8:	00090513          	mv	a0,s2
    800062ac:	f8e40fa3          	sb	a4,-97(s0)
    800062b0:	00000097          	auipc	ra,0x0
    800062b4:	8b8080e7          	jalr	-1864(ra) # 80005b68 <either_copyout>
    800062b8:	01450863          	beq	a0,s4,800062c8 <consoleread+0xb4>
    800062bc:	001c0c13          	addi	s8,s8,1
    800062c0:	fffb8b9b          	addiw	s7,s7,-1
    800062c4:	fb5c94e3          	bne	s9,s5,8000626c <consoleread+0x58>
    800062c8:	000b851b          	sext.w	a0,s7
    800062cc:	06813083          	ld	ra,104(sp)
    800062d0:	06013403          	ld	s0,96(sp)
    800062d4:	05813483          	ld	s1,88(sp)
    800062d8:	05013903          	ld	s2,80(sp)
    800062dc:	04813983          	ld	s3,72(sp)
    800062e0:	04013a03          	ld	s4,64(sp)
    800062e4:	03813a83          	ld	s5,56(sp)
    800062e8:	02813b83          	ld	s7,40(sp)
    800062ec:	02013c03          	ld	s8,32(sp)
    800062f0:	01813c83          	ld	s9,24(sp)
    800062f4:	40ab053b          	subw	a0,s6,a0
    800062f8:	03013b03          	ld	s6,48(sp)
    800062fc:	07010113          	addi	sp,sp,112
    80006300:	00008067          	ret
    80006304:	00001097          	auipc	ra,0x1
    80006308:	1d8080e7          	jalr	472(ra) # 800074dc <push_on>
    8000630c:	0984a703          	lw	a4,152(s1)
    80006310:	09c4a783          	lw	a5,156(s1)
    80006314:	0007879b          	sext.w	a5,a5
    80006318:	fef70ce3          	beq	a4,a5,80006310 <consoleread+0xfc>
    8000631c:	00001097          	auipc	ra,0x1
    80006320:	234080e7          	jalr	564(ra) # 80007550 <pop_on>
    80006324:	0984a783          	lw	a5,152(s1)
    80006328:	07f7f713          	andi	a4,a5,127
    8000632c:	00e48733          	add	a4,s1,a4
    80006330:	01874703          	lbu	a4,24(a4)
    80006334:	0017869b          	addiw	a3,a5,1
    80006338:	08d4ac23          	sw	a3,152(s1)
    8000633c:	00070c9b          	sext.w	s9,a4
    80006340:	f5371ee3          	bne	a4,s3,8000629c <consoleread+0x88>
    80006344:	000b851b          	sext.w	a0,s7
    80006348:	f96bf2e3          	bgeu	s7,s6,800062cc <consoleread+0xb8>
    8000634c:	08f4ac23          	sw	a5,152(s1)
    80006350:	f7dff06f          	j	800062cc <consoleread+0xb8>

0000000080006354 <consputc>:
    80006354:	10000793          	li	a5,256
    80006358:	00f50663          	beq	a0,a5,80006364 <consputc+0x10>
    8000635c:	00001317          	auipc	t1,0x1
    80006360:	9f430067          	jr	-1548(t1) # 80006d50 <uartputc_sync>
    80006364:	ff010113          	addi	sp,sp,-16
    80006368:	00113423          	sd	ra,8(sp)
    8000636c:	00813023          	sd	s0,0(sp)
    80006370:	01010413          	addi	s0,sp,16
    80006374:	00800513          	li	a0,8
    80006378:	00001097          	auipc	ra,0x1
    8000637c:	9d8080e7          	jalr	-1576(ra) # 80006d50 <uartputc_sync>
    80006380:	02000513          	li	a0,32
    80006384:	00001097          	auipc	ra,0x1
    80006388:	9cc080e7          	jalr	-1588(ra) # 80006d50 <uartputc_sync>
    8000638c:	00013403          	ld	s0,0(sp)
    80006390:	00813083          	ld	ra,8(sp)
    80006394:	00800513          	li	a0,8
    80006398:	01010113          	addi	sp,sp,16
    8000639c:	00001317          	auipc	t1,0x1
    800063a0:	9b430067          	jr	-1612(t1) # 80006d50 <uartputc_sync>

00000000800063a4 <consoleintr>:
    800063a4:	fe010113          	addi	sp,sp,-32
    800063a8:	00813823          	sd	s0,16(sp)
    800063ac:	00913423          	sd	s1,8(sp)
    800063b0:	01213023          	sd	s2,0(sp)
    800063b4:	00113c23          	sd	ra,24(sp)
    800063b8:	02010413          	addi	s0,sp,32
    800063bc:	00004917          	auipc	s2,0x4
    800063c0:	80c90913          	addi	s2,s2,-2036 # 80009bc8 <cons>
    800063c4:	00050493          	mv	s1,a0
    800063c8:	00090513          	mv	a0,s2
    800063cc:	00001097          	auipc	ra,0x1
    800063d0:	e40080e7          	jalr	-448(ra) # 8000720c <acquire>
    800063d4:	02048c63          	beqz	s1,8000640c <consoleintr+0x68>
    800063d8:	0a092783          	lw	a5,160(s2)
    800063dc:	09892703          	lw	a4,152(s2)
    800063e0:	07f00693          	li	a3,127
    800063e4:	40e7873b          	subw	a4,a5,a4
    800063e8:	02e6e263          	bltu	a3,a4,8000640c <consoleintr+0x68>
    800063ec:	00d00713          	li	a4,13
    800063f0:	04e48063          	beq	s1,a4,80006430 <consoleintr+0x8c>
    800063f4:	07f7f713          	andi	a4,a5,127
    800063f8:	00e90733          	add	a4,s2,a4
    800063fc:	0017879b          	addiw	a5,a5,1
    80006400:	0af92023          	sw	a5,160(s2)
    80006404:	00970c23          	sb	s1,24(a4)
    80006408:	08f92e23          	sw	a5,156(s2)
    8000640c:	01013403          	ld	s0,16(sp)
    80006410:	01813083          	ld	ra,24(sp)
    80006414:	00813483          	ld	s1,8(sp)
    80006418:	00013903          	ld	s2,0(sp)
    8000641c:	00003517          	auipc	a0,0x3
    80006420:	7ac50513          	addi	a0,a0,1964 # 80009bc8 <cons>
    80006424:	02010113          	addi	sp,sp,32
    80006428:	00001317          	auipc	t1,0x1
    8000642c:	eb030067          	jr	-336(t1) # 800072d8 <release>
    80006430:	00a00493          	li	s1,10
    80006434:	fc1ff06f          	j	800063f4 <consoleintr+0x50>

0000000080006438 <consoleinit>:
    80006438:	fe010113          	addi	sp,sp,-32
    8000643c:	00113c23          	sd	ra,24(sp)
    80006440:	00813823          	sd	s0,16(sp)
    80006444:	00913423          	sd	s1,8(sp)
    80006448:	02010413          	addi	s0,sp,32
    8000644c:	00003497          	auipc	s1,0x3
    80006450:	77c48493          	addi	s1,s1,1916 # 80009bc8 <cons>
    80006454:	00048513          	mv	a0,s1
    80006458:	00002597          	auipc	a1,0x2
    8000645c:	28858593          	addi	a1,a1,648 # 800086e0 <CONSOLE_STATUS+0x6d0>
    80006460:	00001097          	auipc	ra,0x1
    80006464:	d88080e7          	jalr	-632(ra) # 800071e8 <initlock>
    80006468:	00000097          	auipc	ra,0x0
    8000646c:	7ac080e7          	jalr	1964(ra) # 80006c14 <uartinit>
    80006470:	01813083          	ld	ra,24(sp)
    80006474:	01013403          	ld	s0,16(sp)
    80006478:	00000797          	auipc	a5,0x0
    8000647c:	d9c78793          	addi	a5,a5,-612 # 80006214 <consoleread>
    80006480:	0af4bc23          	sd	a5,184(s1)
    80006484:	00000797          	auipc	a5,0x0
    80006488:	cec78793          	addi	a5,a5,-788 # 80006170 <consolewrite>
    8000648c:	0cf4b023          	sd	a5,192(s1)
    80006490:	00813483          	ld	s1,8(sp)
    80006494:	02010113          	addi	sp,sp,32
    80006498:	00008067          	ret

000000008000649c <console_read>:
    8000649c:	ff010113          	addi	sp,sp,-16
    800064a0:	00813423          	sd	s0,8(sp)
    800064a4:	01010413          	addi	s0,sp,16
    800064a8:	00813403          	ld	s0,8(sp)
    800064ac:	00003317          	auipc	t1,0x3
    800064b0:	7d433303          	ld	t1,2004(t1) # 80009c80 <devsw+0x10>
    800064b4:	01010113          	addi	sp,sp,16
    800064b8:	00030067          	jr	t1

00000000800064bc <console_write>:
    800064bc:	ff010113          	addi	sp,sp,-16
    800064c0:	00813423          	sd	s0,8(sp)
    800064c4:	01010413          	addi	s0,sp,16
    800064c8:	00813403          	ld	s0,8(sp)
    800064cc:	00003317          	auipc	t1,0x3
    800064d0:	7bc33303          	ld	t1,1980(t1) # 80009c88 <devsw+0x18>
    800064d4:	01010113          	addi	sp,sp,16
    800064d8:	00030067          	jr	t1

00000000800064dc <panic>:
    800064dc:	fe010113          	addi	sp,sp,-32
    800064e0:	00113c23          	sd	ra,24(sp)
    800064e4:	00813823          	sd	s0,16(sp)
    800064e8:	00913423          	sd	s1,8(sp)
    800064ec:	02010413          	addi	s0,sp,32
    800064f0:	00050493          	mv	s1,a0
    800064f4:	00002517          	auipc	a0,0x2
    800064f8:	1f450513          	addi	a0,a0,500 # 800086e8 <CONSOLE_STATUS+0x6d8>
    800064fc:	00004797          	auipc	a5,0x4
    80006500:	8207a623          	sw	zero,-2004(a5) # 80009d28 <pr+0x18>
    80006504:	00000097          	auipc	ra,0x0
    80006508:	034080e7          	jalr	52(ra) # 80006538 <__printf>
    8000650c:	00048513          	mv	a0,s1
    80006510:	00000097          	auipc	ra,0x0
    80006514:	028080e7          	jalr	40(ra) # 80006538 <__printf>
    80006518:	00002517          	auipc	a0,0x2
    8000651c:	c8850513          	addi	a0,a0,-888 # 800081a0 <CONSOLE_STATUS+0x190>
    80006520:	00000097          	auipc	ra,0x0
    80006524:	018080e7          	jalr	24(ra) # 80006538 <__printf>
    80006528:	00100793          	li	a5,1
    8000652c:	00002717          	auipc	a4,0x2
    80006530:	48f72e23          	sw	a5,1180(a4) # 800089c8 <panicked>
    80006534:	0000006f          	j	80006534 <panic+0x58>

0000000080006538 <__printf>:
    80006538:	f3010113          	addi	sp,sp,-208
    8000653c:	08813023          	sd	s0,128(sp)
    80006540:	07313423          	sd	s3,104(sp)
    80006544:	09010413          	addi	s0,sp,144
    80006548:	05813023          	sd	s8,64(sp)
    8000654c:	08113423          	sd	ra,136(sp)
    80006550:	06913c23          	sd	s1,120(sp)
    80006554:	07213823          	sd	s2,112(sp)
    80006558:	07413023          	sd	s4,96(sp)
    8000655c:	05513c23          	sd	s5,88(sp)
    80006560:	05613823          	sd	s6,80(sp)
    80006564:	05713423          	sd	s7,72(sp)
    80006568:	03913c23          	sd	s9,56(sp)
    8000656c:	03a13823          	sd	s10,48(sp)
    80006570:	03b13423          	sd	s11,40(sp)
    80006574:	00003317          	auipc	t1,0x3
    80006578:	79c30313          	addi	t1,t1,1948 # 80009d10 <pr>
    8000657c:	01832c03          	lw	s8,24(t1)
    80006580:	00b43423          	sd	a1,8(s0)
    80006584:	00c43823          	sd	a2,16(s0)
    80006588:	00d43c23          	sd	a3,24(s0)
    8000658c:	02e43023          	sd	a4,32(s0)
    80006590:	02f43423          	sd	a5,40(s0)
    80006594:	03043823          	sd	a6,48(s0)
    80006598:	03143c23          	sd	a7,56(s0)
    8000659c:	00050993          	mv	s3,a0
    800065a0:	4a0c1663          	bnez	s8,80006a4c <__printf+0x514>
    800065a4:	60098c63          	beqz	s3,80006bbc <__printf+0x684>
    800065a8:	0009c503          	lbu	a0,0(s3)
    800065ac:	00840793          	addi	a5,s0,8
    800065b0:	f6f43c23          	sd	a5,-136(s0)
    800065b4:	00000493          	li	s1,0
    800065b8:	22050063          	beqz	a0,800067d8 <__printf+0x2a0>
    800065bc:	00002a37          	lui	s4,0x2
    800065c0:	00018ab7          	lui	s5,0x18
    800065c4:	000f4b37          	lui	s6,0xf4
    800065c8:	00989bb7          	lui	s7,0x989
    800065cc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800065d0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800065d4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800065d8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800065dc:	00148c9b          	addiw	s9,s1,1
    800065e0:	02500793          	li	a5,37
    800065e4:	01998933          	add	s2,s3,s9
    800065e8:	38f51263          	bne	a0,a5,8000696c <__printf+0x434>
    800065ec:	00094783          	lbu	a5,0(s2)
    800065f0:	00078c9b          	sext.w	s9,a5
    800065f4:	1e078263          	beqz	a5,800067d8 <__printf+0x2a0>
    800065f8:	0024849b          	addiw	s1,s1,2
    800065fc:	07000713          	li	a4,112
    80006600:	00998933          	add	s2,s3,s1
    80006604:	38e78a63          	beq	a5,a4,80006998 <__printf+0x460>
    80006608:	20f76863          	bltu	a4,a5,80006818 <__printf+0x2e0>
    8000660c:	42a78863          	beq	a5,a0,80006a3c <__printf+0x504>
    80006610:	06400713          	li	a4,100
    80006614:	40e79663          	bne	a5,a4,80006a20 <__printf+0x4e8>
    80006618:	f7843783          	ld	a5,-136(s0)
    8000661c:	0007a603          	lw	a2,0(a5)
    80006620:	00878793          	addi	a5,a5,8
    80006624:	f6f43c23          	sd	a5,-136(s0)
    80006628:	42064a63          	bltz	a2,80006a5c <__printf+0x524>
    8000662c:	00a00713          	li	a4,10
    80006630:	02e677bb          	remuw	a5,a2,a4
    80006634:	00002d97          	auipc	s11,0x2
    80006638:	0dcd8d93          	addi	s11,s11,220 # 80008710 <digits>
    8000663c:	00900593          	li	a1,9
    80006640:	0006051b          	sext.w	a0,a2
    80006644:	00000c93          	li	s9,0
    80006648:	02079793          	slli	a5,a5,0x20
    8000664c:	0207d793          	srli	a5,a5,0x20
    80006650:	00fd87b3          	add	a5,s11,a5
    80006654:	0007c783          	lbu	a5,0(a5)
    80006658:	02e656bb          	divuw	a3,a2,a4
    8000665c:	f8f40023          	sb	a5,-128(s0)
    80006660:	14c5d863          	bge	a1,a2,800067b0 <__printf+0x278>
    80006664:	06300593          	li	a1,99
    80006668:	00100c93          	li	s9,1
    8000666c:	02e6f7bb          	remuw	a5,a3,a4
    80006670:	02079793          	slli	a5,a5,0x20
    80006674:	0207d793          	srli	a5,a5,0x20
    80006678:	00fd87b3          	add	a5,s11,a5
    8000667c:	0007c783          	lbu	a5,0(a5)
    80006680:	02e6d73b          	divuw	a4,a3,a4
    80006684:	f8f400a3          	sb	a5,-127(s0)
    80006688:	12a5f463          	bgeu	a1,a0,800067b0 <__printf+0x278>
    8000668c:	00a00693          	li	a3,10
    80006690:	00900593          	li	a1,9
    80006694:	02d777bb          	remuw	a5,a4,a3
    80006698:	02079793          	slli	a5,a5,0x20
    8000669c:	0207d793          	srli	a5,a5,0x20
    800066a0:	00fd87b3          	add	a5,s11,a5
    800066a4:	0007c503          	lbu	a0,0(a5)
    800066a8:	02d757bb          	divuw	a5,a4,a3
    800066ac:	f8a40123          	sb	a0,-126(s0)
    800066b0:	48e5f263          	bgeu	a1,a4,80006b34 <__printf+0x5fc>
    800066b4:	06300513          	li	a0,99
    800066b8:	02d7f5bb          	remuw	a1,a5,a3
    800066bc:	02059593          	slli	a1,a1,0x20
    800066c0:	0205d593          	srli	a1,a1,0x20
    800066c4:	00bd85b3          	add	a1,s11,a1
    800066c8:	0005c583          	lbu	a1,0(a1)
    800066cc:	02d7d7bb          	divuw	a5,a5,a3
    800066d0:	f8b401a3          	sb	a1,-125(s0)
    800066d4:	48e57263          	bgeu	a0,a4,80006b58 <__printf+0x620>
    800066d8:	3e700513          	li	a0,999
    800066dc:	02d7f5bb          	remuw	a1,a5,a3
    800066e0:	02059593          	slli	a1,a1,0x20
    800066e4:	0205d593          	srli	a1,a1,0x20
    800066e8:	00bd85b3          	add	a1,s11,a1
    800066ec:	0005c583          	lbu	a1,0(a1)
    800066f0:	02d7d7bb          	divuw	a5,a5,a3
    800066f4:	f8b40223          	sb	a1,-124(s0)
    800066f8:	46e57663          	bgeu	a0,a4,80006b64 <__printf+0x62c>
    800066fc:	02d7f5bb          	remuw	a1,a5,a3
    80006700:	02059593          	slli	a1,a1,0x20
    80006704:	0205d593          	srli	a1,a1,0x20
    80006708:	00bd85b3          	add	a1,s11,a1
    8000670c:	0005c583          	lbu	a1,0(a1)
    80006710:	02d7d7bb          	divuw	a5,a5,a3
    80006714:	f8b402a3          	sb	a1,-123(s0)
    80006718:	46ea7863          	bgeu	s4,a4,80006b88 <__printf+0x650>
    8000671c:	02d7f5bb          	remuw	a1,a5,a3
    80006720:	02059593          	slli	a1,a1,0x20
    80006724:	0205d593          	srli	a1,a1,0x20
    80006728:	00bd85b3          	add	a1,s11,a1
    8000672c:	0005c583          	lbu	a1,0(a1)
    80006730:	02d7d7bb          	divuw	a5,a5,a3
    80006734:	f8b40323          	sb	a1,-122(s0)
    80006738:	3eeaf863          	bgeu	s5,a4,80006b28 <__printf+0x5f0>
    8000673c:	02d7f5bb          	remuw	a1,a5,a3
    80006740:	02059593          	slli	a1,a1,0x20
    80006744:	0205d593          	srli	a1,a1,0x20
    80006748:	00bd85b3          	add	a1,s11,a1
    8000674c:	0005c583          	lbu	a1,0(a1)
    80006750:	02d7d7bb          	divuw	a5,a5,a3
    80006754:	f8b403a3          	sb	a1,-121(s0)
    80006758:	42eb7e63          	bgeu	s6,a4,80006b94 <__printf+0x65c>
    8000675c:	02d7f5bb          	remuw	a1,a5,a3
    80006760:	02059593          	slli	a1,a1,0x20
    80006764:	0205d593          	srli	a1,a1,0x20
    80006768:	00bd85b3          	add	a1,s11,a1
    8000676c:	0005c583          	lbu	a1,0(a1)
    80006770:	02d7d7bb          	divuw	a5,a5,a3
    80006774:	f8b40423          	sb	a1,-120(s0)
    80006778:	42ebfc63          	bgeu	s7,a4,80006bb0 <__printf+0x678>
    8000677c:	02079793          	slli	a5,a5,0x20
    80006780:	0207d793          	srli	a5,a5,0x20
    80006784:	00fd8db3          	add	s11,s11,a5
    80006788:	000dc703          	lbu	a4,0(s11)
    8000678c:	00a00793          	li	a5,10
    80006790:	00900c93          	li	s9,9
    80006794:	f8e404a3          	sb	a4,-119(s0)
    80006798:	00065c63          	bgez	a2,800067b0 <__printf+0x278>
    8000679c:	f9040713          	addi	a4,s0,-112
    800067a0:	00f70733          	add	a4,a4,a5
    800067a4:	02d00693          	li	a3,45
    800067a8:	fed70823          	sb	a3,-16(a4)
    800067ac:	00078c93          	mv	s9,a5
    800067b0:	f8040793          	addi	a5,s0,-128
    800067b4:	01978cb3          	add	s9,a5,s9
    800067b8:	f7f40d13          	addi	s10,s0,-129
    800067bc:	000cc503          	lbu	a0,0(s9)
    800067c0:	fffc8c93          	addi	s9,s9,-1
    800067c4:	00000097          	auipc	ra,0x0
    800067c8:	b90080e7          	jalr	-1136(ra) # 80006354 <consputc>
    800067cc:	ffac98e3          	bne	s9,s10,800067bc <__printf+0x284>
    800067d0:	00094503          	lbu	a0,0(s2)
    800067d4:	e00514e3          	bnez	a0,800065dc <__printf+0xa4>
    800067d8:	1a0c1663          	bnez	s8,80006984 <__printf+0x44c>
    800067dc:	08813083          	ld	ra,136(sp)
    800067e0:	08013403          	ld	s0,128(sp)
    800067e4:	07813483          	ld	s1,120(sp)
    800067e8:	07013903          	ld	s2,112(sp)
    800067ec:	06813983          	ld	s3,104(sp)
    800067f0:	06013a03          	ld	s4,96(sp)
    800067f4:	05813a83          	ld	s5,88(sp)
    800067f8:	05013b03          	ld	s6,80(sp)
    800067fc:	04813b83          	ld	s7,72(sp)
    80006800:	04013c03          	ld	s8,64(sp)
    80006804:	03813c83          	ld	s9,56(sp)
    80006808:	03013d03          	ld	s10,48(sp)
    8000680c:	02813d83          	ld	s11,40(sp)
    80006810:	0d010113          	addi	sp,sp,208
    80006814:	00008067          	ret
    80006818:	07300713          	li	a4,115
    8000681c:	1ce78a63          	beq	a5,a4,800069f0 <__printf+0x4b8>
    80006820:	07800713          	li	a4,120
    80006824:	1ee79e63          	bne	a5,a4,80006a20 <__printf+0x4e8>
    80006828:	f7843783          	ld	a5,-136(s0)
    8000682c:	0007a703          	lw	a4,0(a5)
    80006830:	00878793          	addi	a5,a5,8
    80006834:	f6f43c23          	sd	a5,-136(s0)
    80006838:	28074263          	bltz	a4,80006abc <__printf+0x584>
    8000683c:	00002d97          	auipc	s11,0x2
    80006840:	ed4d8d93          	addi	s11,s11,-300 # 80008710 <digits>
    80006844:	00f77793          	andi	a5,a4,15
    80006848:	00fd87b3          	add	a5,s11,a5
    8000684c:	0007c683          	lbu	a3,0(a5)
    80006850:	00f00613          	li	a2,15
    80006854:	0007079b          	sext.w	a5,a4
    80006858:	f8d40023          	sb	a3,-128(s0)
    8000685c:	0047559b          	srliw	a1,a4,0x4
    80006860:	0047569b          	srliw	a3,a4,0x4
    80006864:	00000c93          	li	s9,0
    80006868:	0ee65063          	bge	a2,a4,80006948 <__printf+0x410>
    8000686c:	00f6f693          	andi	a3,a3,15
    80006870:	00dd86b3          	add	a3,s11,a3
    80006874:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006878:	0087d79b          	srliw	a5,a5,0x8
    8000687c:	00100c93          	li	s9,1
    80006880:	f8d400a3          	sb	a3,-127(s0)
    80006884:	0cb67263          	bgeu	a2,a1,80006948 <__printf+0x410>
    80006888:	00f7f693          	andi	a3,a5,15
    8000688c:	00dd86b3          	add	a3,s11,a3
    80006890:	0006c583          	lbu	a1,0(a3)
    80006894:	00f00613          	li	a2,15
    80006898:	0047d69b          	srliw	a3,a5,0x4
    8000689c:	f8b40123          	sb	a1,-126(s0)
    800068a0:	0047d593          	srli	a1,a5,0x4
    800068a4:	28f67e63          	bgeu	a2,a5,80006b40 <__printf+0x608>
    800068a8:	00f6f693          	andi	a3,a3,15
    800068ac:	00dd86b3          	add	a3,s11,a3
    800068b0:	0006c503          	lbu	a0,0(a3)
    800068b4:	0087d813          	srli	a6,a5,0x8
    800068b8:	0087d69b          	srliw	a3,a5,0x8
    800068bc:	f8a401a3          	sb	a0,-125(s0)
    800068c0:	28b67663          	bgeu	a2,a1,80006b4c <__printf+0x614>
    800068c4:	00f6f693          	andi	a3,a3,15
    800068c8:	00dd86b3          	add	a3,s11,a3
    800068cc:	0006c583          	lbu	a1,0(a3)
    800068d0:	00c7d513          	srli	a0,a5,0xc
    800068d4:	00c7d69b          	srliw	a3,a5,0xc
    800068d8:	f8b40223          	sb	a1,-124(s0)
    800068dc:	29067a63          	bgeu	a2,a6,80006b70 <__printf+0x638>
    800068e0:	00f6f693          	andi	a3,a3,15
    800068e4:	00dd86b3          	add	a3,s11,a3
    800068e8:	0006c583          	lbu	a1,0(a3)
    800068ec:	0107d813          	srli	a6,a5,0x10
    800068f0:	0107d69b          	srliw	a3,a5,0x10
    800068f4:	f8b402a3          	sb	a1,-123(s0)
    800068f8:	28a67263          	bgeu	a2,a0,80006b7c <__printf+0x644>
    800068fc:	00f6f693          	andi	a3,a3,15
    80006900:	00dd86b3          	add	a3,s11,a3
    80006904:	0006c683          	lbu	a3,0(a3)
    80006908:	0147d79b          	srliw	a5,a5,0x14
    8000690c:	f8d40323          	sb	a3,-122(s0)
    80006910:	21067663          	bgeu	a2,a6,80006b1c <__printf+0x5e4>
    80006914:	02079793          	slli	a5,a5,0x20
    80006918:	0207d793          	srli	a5,a5,0x20
    8000691c:	00fd8db3          	add	s11,s11,a5
    80006920:	000dc683          	lbu	a3,0(s11)
    80006924:	00800793          	li	a5,8
    80006928:	00700c93          	li	s9,7
    8000692c:	f8d403a3          	sb	a3,-121(s0)
    80006930:	00075c63          	bgez	a4,80006948 <__printf+0x410>
    80006934:	f9040713          	addi	a4,s0,-112
    80006938:	00f70733          	add	a4,a4,a5
    8000693c:	02d00693          	li	a3,45
    80006940:	fed70823          	sb	a3,-16(a4)
    80006944:	00078c93          	mv	s9,a5
    80006948:	f8040793          	addi	a5,s0,-128
    8000694c:	01978cb3          	add	s9,a5,s9
    80006950:	f7f40d13          	addi	s10,s0,-129
    80006954:	000cc503          	lbu	a0,0(s9)
    80006958:	fffc8c93          	addi	s9,s9,-1
    8000695c:	00000097          	auipc	ra,0x0
    80006960:	9f8080e7          	jalr	-1544(ra) # 80006354 <consputc>
    80006964:	ff9d18e3          	bne	s10,s9,80006954 <__printf+0x41c>
    80006968:	0100006f          	j	80006978 <__printf+0x440>
    8000696c:	00000097          	auipc	ra,0x0
    80006970:	9e8080e7          	jalr	-1560(ra) # 80006354 <consputc>
    80006974:	000c8493          	mv	s1,s9
    80006978:	00094503          	lbu	a0,0(s2)
    8000697c:	c60510e3          	bnez	a0,800065dc <__printf+0xa4>
    80006980:	e40c0ee3          	beqz	s8,800067dc <__printf+0x2a4>
    80006984:	00003517          	auipc	a0,0x3
    80006988:	38c50513          	addi	a0,a0,908 # 80009d10 <pr>
    8000698c:	00001097          	auipc	ra,0x1
    80006990:	94c080e7          	jalr	-1716(ra) # 800072d8 <release>
    80006994:	e49ff06f          	j	800067dc <__printf+0x2a4>
    80006998:	f7843783          	ld	a5,-136(s0)
    8000699c:	03000513          	li	a0,48
    800069a0:	01000d13          	li	s10,16
    800069a4:	00878713          	addi	a4,a5,8
    800069a8:	0007bc83          	ld	s9,0(a5)
    800069ac:	f6e43c23          	sd	a4,-136(s0)
    800069b0:	00000097          	auipc	ra,0x0
    800069b4:	9a4080e7          	jalr	-1628(ra) # 80006354 <consputc>
    800069b8:	07800513          	li	a0,120
    800069bc:	00000097          	auipc	ra,0x0
    800069c0:	998080e7          	jalr	-1640(ra) # 80006354 <consputc>
    800069c4:	00002d97          	auipc	s11,0x2
    800069c8:	d4cd8d93          	addi	s11,s11,-692 # 80008710 <digits>
    800069cc:	03ccd793          	srli	a5,s9,0x3c
    800069d0:	00fd87b3          	add	a5,s11,a5
    800069d4:	0007c503          	lbu	a0,0(a5)
    800069d8:	fffd0d1b          	addiw	s10,s10,-1
    800069dc:	004c9c93          	slli	s9,s9,0x4
    800069e0:	00000097          	auipc	ra,0x0
    800069e4:	974080e7          	jalr	-1676(ra) # 80006354 <consputc>
    800069e8:	fe0d12e3          	bnez	s10,800069cc <__printf+0x494>
    800069ec:	f8dff06f          	j	80006978 <__printf+0x440>
    800069f0:	f7843783          	ld	a5,-136(s0)
    800069f4:	0007bc83          	ld	s9,0(a5)
    800069f8:	00878793          	addi	a5,a5,8
    800069fc:	f6f43c23          	sd	a5,-136(s0)
    80006a00:	000c9a63          	bnez	s9,80006a14 <__printf+0x4dc>
    80006a04:	1080006f          	j	80006b0c <__printf+0x5d4>
    80006a08:	001c8c93          	addi	s9,s9,1
    80006a0c:	00000097          	auipc	ra,0x0
    80006a10:	948080e7          	jalr	-1720(ra) # 80006354 <consputc>
    80006a14:	000cc503          	lbu	a0,0(s9)
    80006a18:	fe0518e3          	bnez	a0,80006a08 <__printf+0x4d0>
    80006a1c:	f5dff06f          	j	80006978 <__printf+0x440>
    80006a20:	02500513          	li	a0,37
    80006a24:	00000097          	auipc	ra,0x0
    80006a28:	930080e7          	jalr	-1744(ra) # 80006354 <consputc>
    80006a2c:	000c8513          	mv	a0,s9
    80006a30:	00000097          	auipc	ra,0x0
    80006a34:	924080e7          	jalr	-1756(ra) # 80006354 <consputc>
    80006a38:	f41ff06f          	j	80006978 <__printf+0x440>
    80006a3c:	02500513          	li	a0,37
    80006a40:	00000097          	auipc	ra,0x0
    80006a44:	914080e7          	jalr	-1772(ra) # 80006354 <consputc>
    80006a48:	f31ff06f          	j	80006978 <__printf+0x440>
    80006a4c:	00030513          	mv	a0,t1
    80006a50:	00000097          	auipc	ra,0x0
    80006a54:	7bc080e7          	jalr	1980(ra) # 8000720c <acquire>
    80006a58:	b4dff06f          	j	800065a4 <__printf+0x6c>
    80006a5c:	40c0053b          	negw	a0,a2
    80006a60:	00a00713          	li	a4,10
    80006a64:	02e576bb          	remuw	a3,a0,a4
    80006a68:	00002d97          	auipc	s11,0x2
    80006a6c:	ca8d8d93          	addi	s11,s11,-856 # 80008710 <digits>
    80006a70:	ff700593          	li	a1,-9
    80006a74:	02069693          	slli	a3,a3,0x20
    80006a78:	0206d693          	srli	a3,a3,0x20
    80006a7c:	00dd86b3          	add	a3,s11,a3
    80006a80:	0006c683          	lbu	a3,0(a3)
    80006a84:	02e557bb          	divuw	a5,a0,a4
    80006a88:	f8d40023          	sb	a3,-128(s0)
    80006a8c:	10b65e63          	bge	a2,a1,80006ba8 <__printf+0x670>
    80006a90:	06300593          	li	a1,99
    80006a94:	02e7f6bb          	remuw	a3,a5,a4
    80006a98:	02069693          	slli	a3,a3,0x20
    80006a9c:	0206d693          	srli	a3,a3,0x20
    80006aa0:	00dd86b3          	add	a3,s11,a3
    80006aa4:	0006c683          	lbu	a3,0(a3)
    80006aa8:	02e7d73b          	divuw	a4,a5,a4
    80006aac:	00200793          	li	a5,2
    80006ab0:	f8d400a3          	sb	a3,-127(s0)
    80006ab4:	bca5ece3          	bltu	a1,a0,8000668c <__printf+0x154>
    80006ab8:	ce5ff06f          	j	8000679c <__printf+0x264>
    80006abc:	40e007bb          	negw	a5,a4
    80006ac0:	00002d97          	auipc	s11,0x2
    80006ac4:	c50d8d93          	addi	s11,s11,-944 # 80008710 <digits>
    80006ac8:	00f7f693          	andi	a3,a5,15
    80006acc:	00dd86b3          	add	a3,s11,a3
    80006ad0:	0006c583          	lbu	a1,0(a3)
    80006ad4:	ff100613          	li	a2,-15
    80006ad8:	0047d69b          	srliw	a3,a5,0x4
    80006adc:	f8b40023          	sb	a1,-128(s0)
    80006ae0:	0047d59b          	srliw	a1,a5,0x4
    80006ae4:	0ac75e63          	bge	a4,a2,80006ba0 <__printf+0x668>
    80006ae8:	00f6f693          	andi	a3,a3,15
    80006aec:	00dd86b3          	add	a3,s11,a3
    80006af0:	0006c603          	lbu	a2,0(a3)
    80006af4:	00f00693          	li	a3,15
    80006af8:	0087d79b          	srliw	a5,a5,0x8
    80006afc:	f8c400a3          	sb	a2,-127(s0)
    80006b00:	d8b6e4e3          	bltu	a3,a1,80006888 <__printf+0x350>
    80006b04:	00200793          	li	a5,2
    80006b08:	e2dff06f          	j	80006934 <__printf+0x3fc>
    80006b0c:	00002c97          	auipc	s9,0x2
    80006b10:	be4c8c93          	addi	s9,s9,-1052 # 800086f0 <CONSOLE_STATUS+0x6e0>
    80006b14:	02800513          	li	a0,40
    80006b18:	ef1ff06f          	j	80006a08 <__printf+0x4d0>
    80006b1c:	00700793          	li	a5,7
    80006b20:	00600c93          	li	s9,6
    80006b24:	e0dff06f          	j	80006930 <__printf+0x3f8>
    80006b28:	00700793          	li	a5,7
    80006b2c:	00600c93          	li	s9,6
    80006b30:	c69ff06f          	j	80006798 <__printf+0x260>
    80006b34:	00300793          	li	a5,3
    80006b38:	00200c93          	li	s9,2
    80006b3c:	c5dff06f          	j	80006798 <__printf+0x260>
    80006b40:	00300793          	li	a5,3
    80006b44:	00200c93          	li	s9,2
    80006b48:	de9ff06f          	j	80006930 <__printf+0x3f8>
    80006b4c:	00400793          	li	a5,4
    80006b50:	00300c93          	li	s9,3
    80006b54:	dddff06f          	j	80006930 <__printf+0x3f8>
    80006b58:	00400793          	li	a5,4
    80006b5c:	00300c93          	li	s9,3
    80006b60:	c39ff06f          	j	80006798 <__printf+0x260>
    80006b64:	00500793          	li	a5,5
    80006b68:	00400c93          	li	s9,4
    80006b6c:	c2dff06f          	j	80006798 <__printf+0x260>
    80006b70:	00500793          	li	a5,5
    80006b74:	00400c93          	li	s9,4
    80006b78:	db9ff06f          	j	80006930 <__printf+0x3f8>
    80006b7c:	00600793          	li	a5,6
    80006b80:	00500c93          	li	s9,5
    80006b84:	dadff06f          	j	80006930 <__printf+0x3f8>
    80006b88:	00600793          	li	a5,6
    80006b8c:	00500c93          	li	s9,5
    80006b90:	c09ff06f          	j	80006798 <__printf+0x260>
    80006b94:	00800793          	li	a5,8
    80006b98:	00700c93          	li	s9,7
    80006b9c:	bfdff06f          	j	80006798 <__printf+0x260>
    80006ba0:	00100793          	li	a5,1
    80006ba4:	d91ff06f          	j	80006934 <__printf+0x3fc>
    80006ba8:	00100793          	li	a5,1
    80006bac:	bf1ff06f          	j	8000679c <__printf+0x264>
    80006bb0:	00900793          	li	a5,9
    80006bb4:	00800c93          	li	s9,8
    80006bb8:	be1ff06f          	j	80006798 <__printf+0x260>
    80006bbc:	00002517          	auipc	a0,0x2
    80006bc0:	b3c50513          	addi	a0,a0,-1220 # 800086f8 <CONSOLE_STATUS+0x6e8>
    80006bc4:	00000097          	auipc	ra,0x0
    80006bc8:	918080e7          	jalr	-1768(ra) # 800064dc <panic>

0000000080006bcc <printfinit>:
    80006bcc:	fe010113          	addi	sp,sp,-32
    80006bd0:	00813823          	sd	s0,16(sp)
    80006bd4:	00913423          	sd	s1,8(sp)
    80006bd8:	00113c23          	sd	ra,24(sp)
    80006bdc:	02010413          	addi	s0,sp,32
    80006be0:	00003497          	auipc	s1,0x3
    80006be4:	13048493          	addi	s1,s1,304 # 80009d10 <pr>
    80006be8:	00048513          	mv	a0,s1
    80006bec:	00002597          	auipc	a1,0x2
    80006bf0:	b1c58593          	addi	a1,a1,-1252 # 80008708 <CONSOLE_STATUS+0x6f8>
    80006bf4:	00000097          	auipc	ra,0x0
    80006bf8:	5f4080e7          	jalr	1524(ra) # 800071e8 <initlock>
    80006bfc:	01813083          	ld	ra,24(sp)
    80006c00:	01013403          	ld	s0,16(sp)
    80006c04:	0004ac23          	sw	zero,24(s1)
    80006c08:	00813483          	ld	s1,8(sp)
    80006c0c:	02010113          	addi	sp,sp,32
    80006c10:	00008067          	ret

0000000080006c14 <uartinit>:
    80006c14:	ff010113          	addi	sp,sp,-16
    80006c18:	00813423          	sd	s0,8(sp)
    80006c1c:	01010413          	addi	s0,sp,16
    80006c20:	100007b7          	lui	a5,0x10000
    80006c24:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006c28:	f8000713          	li	a4,-128
    80006c2c:	00e781a3          	sb	a4,3(a5)
    80006c30:	00300713          	li	a4,3
    80006c34:	00e78023          	sb	a4,0(a5)
    80006c38:	000780a3          	sb	zero,1(a5)
    80006c3c:	00e781a3          	sb	a4,3(a5)
    80006c40:	00700693          	li	a3,7
    80006c44:	00d78123          	sb	a3,2(a5)
    80006c48:	00e780a3          	sb	a4,1(a5)
    80006c4c:	00813403          	ld	s0,8(sp)
    80006c50:	01010113          	addi	sp,sp,16
    80006c54:	00008067          	ret

0000000080006c58 <uartputc>:
    80006c58:	00002797          	auipc	a5,0x2
    80006c5c:	d707a783          	lw	a5,-656(a5) # 800089c8 <panicked>
    80006c60:	00078463          	beqz	a5,80006c68 <uartputc+0x10>
    80006c64:	0000006f          	j	80006c64 <uartputc+0xc>
    80006c68:	fd010113          	addi	sp,sp,-48
    80006c6c:	02813023          	sd	s0,32(sp)
    80006c70:	00913c23          	sd	s1,24(sp)
    80006c74:	01213823          	sd	s2,16(sp)
    80006c78:	01313423          	sd	s3,8(sp)
    80006c7c:	02113423          	sd	ra,40(sp)
    80006c80:	03010413          	addi	s0,sp,48
    80006c84:	00002917          	auipc	s2,0x2
    80006c88:	d4c90913          	addi	s2,s2,-692 # 800089d0 <uart_tx_r>
    80006c8c:	00093783          	ld	a5,0(s2)
    80006c90:	00002497          	auipc	s1,0x2
    80006c94:	d4848493          	addi	s1,s1,-696 # 800089d8 <uart_tx_w>
    80006c98:	0004b703          	ld	a4,0(s1)
    80006c9c:	02078693          	addi	a3,a5,32
    80006ca0:	00050993          	mv	s3,a0
    80006ca4:	02e69c63          	bne	a3,a4,80006cdc <uartputc+0x84>
    80006ca8:	00001097          	auipc	ra,0x1
    80006cac:	834080e7          	jalr	-1996(ra) # 800074dc <push_on>
    80006cb0:	00093783          	ld	a5,0(s2)
    80006cb4:	0004b703          	ld	a4,0(s1)
    80006cb8:	02078793          	addi	a5,a5,32
    80006cbc:	00e79463          	bne	a5,a4,80006cc4 <uartputc+0x6c>
    80006cc0:	0000006f          	j	80006cc0 <uartputc+0x68>
    80006cc4:	00001097          	auipc	ra,0x1
    80006cc8:	88c080e7          	jalr	-1908(ra) # 80007550 <pop_on>
    80006ccc:	00093783          	ld	a5,0(s2)
    80006cd0:	0004b703          	ld	a4,0(s1)
    80006cd4:	02078693          	addi	a3,a5,32
    80006cd8:	fce688e3          	beq	a3,a4,80006ca8 <uartputc+0x50>
    80006cdc:	01f77693          	andi	a3,a4,31
    80006ce0:	00003597          	auipc	a1,0x3
    80006ce4:	05058593          	addi	a1,a1,80 # 80009d30 <uart_tx_buf>
    80006ce8:	00d586b3          	add	a3,a1,a3
    80006cec:	00170713          	addi	a4,a4,1
    80006cf0:	01368023          	sb	s3,0(a3)
    80006cf4:	00e4b023          	sd	a4,0(s1)
    80006cf8:	10000637          	lui	a2,0x10000
    80006cfc:	02f71063          	bne	a4,a5,80006d1c <uartputc+0xc4>
    80006d00:	0340006f          	j	80006d34 <uartputc+0xdc>
    80006d04:	00074703          	lbu	a4,0(a4)
    80006d08:	00f93023          	sd	a5,0(s2)
    80006d0c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006d10:	00093783          	ld	a5,0(s2)
    80006d14:	0004b703          	ld	a4,0(s1)
    80006d18:	00f70e63          	beq	a4,a5,80006d34 <uartputc+0xdc>
    80006d1c:	00564683          	lbu	a3,5(a2)
    80006d20:	01f7f713          	andi	a4,a5,31
    80006d24:	00e58733          	add	a4,a1,a4
    80006d28:	0206f693          	andi	a3,a3,32
    80006d2c:	00178793          	addi	a5,a5,1
    80006d30:	fc069ae3          	bnez	a3,80006d04 <uartputc+0xac>
    80006d34:	02813083          	ld	ra,40(sp)
    80006d38:	02013403          	ld	s0,32(sp)
    80006d3c:	01813483          	ld	s1,24(sp)
    80006d40:	01013903          	ld	s2,16(sp)
    80006d44:	00813983          	ld	s3,8(sp)
    80006d48:	03010113          	addi	sp,sp,48
    80006d4c:	00008067          	ret

0000000080006d50 <uartputc_sync>:
    80006d50:	ff010113          	addi	sp,sp,-16
    80006d54:	00813423          	sd	s0,8(sp)
    80006d58:	01010413          	addi	s0,sp,16
    80006d5c:	00002717          	auipc	a4,0x2
    80006d60:	c6c72703          	lw	a4,-916(a4) # 800089c8 <panicked>
    80006d64:	02071663          	bnez	a4,80006d90 <uartputc_sync+0x40>
    80006d68:	00050793          	mv	a5,a0
    80006d6c:	100006b7          	lui	a3,0x10000
    80006d70:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80006d74:	02077713          	andi	a4,a4,32
    80006d78:	fe070ce3          	beqz	a4,80006d70 <uartputc_sync+0x20>
    80006d7c:	0ff7f793          	andi	a5,a5,255
    80006d80:	00f68023          	sb	a5,0(a3)
    80006d84:	00813403          	ld	s0,8(sp)
    80006d88:	01010113          	addi	sp,sp,16
    80006d8c:	00008067          	ret
    80006d90:	0000006f          	j	80006d90 <uartputc_sync+0x40>

0000000080006d94 <uartstart>:
    80006d94:	ff010113          	addi	sp,sp,-16
    80006d98:	00813423          	sd	s0,8(sp)
    80006d9c:	01010413          	addi	s0,sp,16
    80006da0:	00002617          	auipc	a2,0x2
    80006da4:	c3060613          	addi	a2,a2,-976 # 800089d0 <uart_tx_r>
    80006da8:	00002517          	auipc	a0,0x2
    80006dac:	c3050513          	addi	a0,a0,-976 # 800089d8 <uart_tx_w>
    80006db0:	00063783          	ld	a5,0(a2)
    80006db4:	00053703          	ld	a4,0(a0)
    80006db8:	04f70263          	beq	a4,a5,80006dfc <uartstart+0x68>
    80006dbc:	100005b7          	lui	a1,0x10000
    80006dc0:	00003817          	auipc	a6,0x3
    80006dc4:	f7080813          	addi	a6,a6,-144 # 80009d30 <uart_tx_buf>
    80006dc8:	01c0006f          	j	80006de4 <uartstart+0x50>
    80006dcc:	0006c703          	lbu	a4,0(a3)
    80006dd0:	00f63023          	sd	a5,0(a2)
    80006dd4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006dd8:	00063783          	ld	a5,0(a2)
    80006ddc:	00053703          	ld	a4,0(a0)
    80006de0:	00f70e63          	beq	a4,a5,80006dfc <uartstart+0x68>
    80006de4:	01f7f713          	andi	a4,a5,31
    80006de8:	00e806b3          	add	a3,a6,a4
    80006dec:	0055c703          	lbu	a4,5(a1)
    80006df0:	00178793          	addi	a5,a5,1
    80006df4:	02077713          	andi	a4,a4,32
    80006df8:	fc071ae3          	bnez	a4,80006dcc <uartstart+0x38>
    80006dfc:	00813403          	ld	s0,8(sp)
    80006e00:	01010113          	addi	sp,sp,16
    80006e04:	00008067          	ret

0000000080006e08 <uartgetc>:
    80006e08:	ff010113          	addi	sp,sp,-16
    80006e0c:	00813423          	sd	s0,8(sp)
    80006e10:	01010413          	addi	s0,sp,16
    80006e14:	10000737          	lui	a4,0x10000
    80006e18:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80006e1c:	0017f793          	andi	a5,a5,1
    80006e20:	00078c63          	beqz	a5,80006e38 <uartgetc+0x30>
    80006e24:	00074503          	lbu	a0,0(a4)
    80006e28:	0ff57513          	andi	a0,a0,255
    80006e2c:	00813403          	ld	s0,8(sp)
    80006e30:	01010113          	addi	sp,sp,16
    80006e34:	00008067          	ret
    80006e38:	fff00513          	li	a0,-1
    80006e3c:	ff1ff06f          	j	80006e2c <uartgetc+0x24>

0000000080006e40 <uartintr>:
    80006e40:	100007b7          	lui	a5,0x10000
    80006e44:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80006e48:	0017f793          	andi	a5,a5,1
    80006e4c:	0a078463          	beqz	a5,80006ef4 <uartintr+0xb4>
    80006e50:	fe010113          	addi	sp,sp,-32
    80006e54:	00813823          	sd	s0,16(sp)
    80006e58:	00913423          	sd	s1,8(sp)
    80006e5c:	00113c23          	sd	ra,24(sp)
    80006e60:	02010413          	addi	s0,sp,32
    80006e64:	100004b7          	lui	s1,0x10000
    80006e68:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80006e6c:	0ff57513          	andi	a0,a0,255
    80006e70:	fffff097          	auipc	ra,0xfffff
    80006e74:	534080e7          	jalr	1332(ra) # 800063a4 <consoleintr>
    80006e78:	0054c783          	lbu	a5,5(s1)
    80006e7c:	0017f793          	andi	a5,a5,1
    80006e80:	fe0794e3          	bnez	a5,80006e68 <uartintr+0x28>
    80006e84:	00002617          	auipc	a2,0x2
    80006e88:	b4c60613          	addi	a2,a2,-1204 # 800089d0 <uart_tx_r>
    80006e8c:	00002517          	auipc	a0,0x2
    80006e90:	b4c50513          	addi	a0,a0,-1204 # 800089d8 <uart_tx_w>
    80006e94:	00063783          	ld	a5,0(a2)
    80006e98:	00053703          	ld	a4,0(a0)
    80006e9c:	04f70263          	beq	a4,a5,80006ee0 <uartintr+0xa0>
    80006ea0:	100005b7          	lui	a1,0x10000
    80006ea4:	00003817          	auipc	a6,0x3
    80006ea8:	e8c80813          	addi	a6,a6,-372 # 80009d30 <uart_tx_buf>
    80006eac:	01c0006f          	j	80006ec8 <uartintr+0x88>
    80006eb0:	0006c703          	lbu	a4,0(a3)
    80006eb4:	00f63023          	sd	a5,0(a2)
    80006eb8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006ebc:	00063783          	ld	a5,0(a2)
    80006ec0:	00053703          	ld	a4,0(a0)
    80006ec4:	00f70e63          	beq	a4,a5,80006ee0 <uartintr+0xa0>
    80006ec8:	01f7f713          	andi	a4,a5,31
    80006ecc:	00e806b3          	add	a3,a6,a4
    80006ed0:	0055c703          	lbu	a4,5(a1)
    80006ed4:	00178793          	addi	a5,a5,1
    80006ed8:	02077713          	andi	a4,a4,32
    80006edc:	fc071ae3          	bnez	a4,80006eb0 <uartintr+0x70>
    80006ee0:	01813083          	ld	ra,24(sp)
    80006ee4:	01013403          	ld	s0,16(sp)
    80006ee8:	00813483          	ld	s1,8(sp)
    80006eec:	02010113          	addi	sp,sp,32
    80006ef0:	00008067          	ret
    80006ef4:	00002617          	auipc	a2,0x2
    80006ef8:	adc60613          	addi	a2,a2,-1316 # 800089d0 <uart_tx_r>
    80006efc:	00002517          	auipc	a0,0x2
    80006f00:	adc50513          	addi	a0,a0,-1316 # 800089d8 <uart_tx_w>
    80006f04:	00063783          	ld	a5,0(a2)
    80006f08:	00053703          	ld	a4,0(a0)
    80006f0c:	04f70263          	beq	a4,a5,80006f50 <uartintr+0x110>
    80006f10:	100005b7          	lui	a1,0x10000
    80006f14:	00003817          	auipc	a6,0x3
    80006f18:	e1c80813          	addi	a6,a6,-484 # 80009d30 <uart_tx_buf>
    80006f1c:	01c0006f          	j	80006f38 <uartintr+0xf8>
    80006f20:	0006c703          	lbu	a4,0(a3)
    80006f24:	00f63023          	sd	a5,0(a2)
    80006f28:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006f2c:	00063783          	ld	a5,0(a2)
    80006f30:	00053703          	ld	a4,0(a0)
    80006f34:	02f70063          	beq	a4,a5,80006f54 <uartintr+0x114>
    80006f38:	01f7f713          	andi	a4,a5,31
    80006f3c:	00e806b3          	add	a3,a6,a4
    80006f40:	0055c703          	lbu	a4,5(a1)
    80006f44:	00178793          	addi	a5,a5,1
    80006f48:	02077713          	andi	a4,a4,32
    80006f4c:	fc071ae3          	bnez	a4,80006f20 <uartintr+0xe0>
    80006f50:	00008067          	ret
    80006f54:	00008067          	ret

0000000080006f58 <kinit>:
    80006f58:	fc010113          	addi	sp,sp,-64
    80006f5c:	02913423          	sd	s1,40(sp)
    80006f60:	fffff7b7          	lui	a5,0xfffff
    80006f64:	00009497          	auipc	s1,0x9
    80006f68:	09b48493          	addi	s1,s1,155 # 8000ffff <end+0xfff>
    80006f6c:	02813823          	sd	s0,48(sp)
    80006f70:	01313c23          	sd	s3,24(sp)
    80006f74:	00f4f4b3          	and	s1,s1,a5
    80006f78:	02113c23          	sd	ra,56(sp)
    80006f7c:	03213023          	sd	s2,32(sp)
    80006f80:	01413823          	sd	s4,16(sp)
    80006f84:	01513423          	sd	s5,8(sp)
    80006f88:	04010413          	addi	s0,sp,64
    80006f8c:	000017b7          	lui	a5,0x1
    80006f90:	01100993          	li	s3,17
    80006f94:	00f487b3          	add	a5,s1,a5
    80006f98:	01b99993          	slli	s3,s3,0x1b
    80006f9c:	06f9e063          	bltu	s3,a5,80006ffc <kinit+0xa4>
    80006fa0:	00008a97          	auipc	s5,0x8
    80006fa4:	060a8a93          	addi	s5,s5,96 # 8000f000 <end>
    80006fa8:	0754ec63          	bltu	s1,s5,80007020 <kinit+0xc8>
    80006fac:	0734fa63          	bgeu	s1,s3,80007020 <kinit+0xc8>
    80006fb0:	00088a37          	lui	s4,0x88
    80006fb4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80006fb8:	00002917          	auipc	s2,0x2
    80006fbc:	a2890913          	addi	s2,s2,-1496 # 800089e0 <kmem>
    80006fc0:	00ca1a13          	slli	s4,s4,0xc
    80006fc4:	0140006f          	j	80006fd8 <kinit+0x80>
    80006fc8:	000017b7          	lui	a5,0x1
    80006fcc:	00f484b3          	add	s1,s1,a5
    80006fd0:	0554e863          	bltu	s1,s5,80007020 <kinit+0xc8>
    80006fd4:	0534f663          	bgeu	s1,s3,80007020 <kinit+0xc8>
    80006fd8:	00001637          	lui	a2,0x1
    80006fdc:	00100593          	li	a1,1
    80006fe0:	00048513          	mv	a0,s1
    80006fe4:	00000097          	auipc	ra,0x0
    80006fe8:	5e4080e7          	jalr	1508(ra) # 800075c8 <__memset>
    80006fec:	00093783          	ld	a5,0(s2)
    80006ff0:	00f4b023          	sd	a5,0(s1)
    80006ff4:	00993023          	sd	s1,0(s2)
    80006ff8:	fd4498e3          	bne	s1,s4,80006fc8 <kinit+0x70>
    80006ffc:	03813083          	ld	ra,56(sp)
    80007000:	03013403          	ld	s0,48(sp)
    80007004:	02813483          	ld	s1,40(sp)
    80007008:	02013903          	ld	s2,32(sp)
    8000700c:	01813983          	ld	s3,24(sp)
    80007010:	01013a03          	ld	s4,16(sp)
    80007014:	00813a83          	ld	s5,8(sp)
    80007018:	04010113          	addi	sp,sp,64
    8000701c:	00008067          	ret
    80007020:	00001517          	auipc	a0,0x1
    80007024:	70850513          	addi	a0,a0,1800 # 80008728 <digits+0x18>
    80007028:	fffff097          	auipc	ra,0xfffff
    8000702c:	4b4080e7          	jalr	1204(ra) # 800064dc <panic>

0000000080007030 <freerange>:
    80007030:	fc010113          	addi	sp,sp,-64
    80007034:	000017b7          	lui	a5,0x1
    80007038:	02913423          	sd	s1,40(sp)
    8000703c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007040:	009504b3          	add	s1,a0,s1
    80007044:	fffff537          	lui	a0,0xfffff
    80007048:	02813823          	sd	s0,48(sp)
    8000704c:	02113c23          	sd	ra,56(sp)
    80007050:	03213023          	sd	s2,32(sp)
    80007054:	01313c23          	sd	s3,24(sp)
    80007058:	01413823          	sd	s4,16(sp)
    8000705c:	01513423          	sd	s5,8(sp)
    80007060:	01613023          	sd	s6,0(sp)
    80007064:	04010413          	addi	s0,sp,64
    80007068:	00a4f4b3          	and	s1,s1,a0
    8000706c:	00f487b3          	add	a5,s1,a5
    80007070:	06f5e463          	bltu	a1,a5,800070d8 <freerange+0xa8>
    80007074:	00008a97          	auipc	s5,0x8
    80007078:	f8ca8a93          	addi	s5,s5,-116 # 8000f000 <end>
    8000707c:	0954e263          	bltu	s1,s5,80007100 <freerange+0xd0>
    80007080:	01100993          	li	s3,17
    80007084:	01b99993          	slli	s3,s3,0x1b
    80007088:	0734fc63          	bgeu	s1,s3,80007100 <freerange+0xd0>
    8000708c:	00058a13          	mv	s4,a1
    80007090:	00002917          	auipc	s2,0x2
    80007094:	95090913          	addi	s2,s2,-1712 # 800089e0 <kmem>
    80007098:	00002b37          	lui	s6,0x2
    8000709c:	0140006f          	j	800070b0 <freerange+0x80>
    800070a0:	000017b7          	lui	a5,0x1
    800070a4:	00f484b3          	add	s1,s1,a5
    800070a8:	0554ec63          	bltu	s1,s5,80007100 <freerange+0xd0>
    800070ac:	0534fa63          	bgeu	s1,s3,80007100 <freerange+0xd0>
    800070b0:	00001637          	lui	a2,0x1
    800070b4:	00100593          	li	a1,1
    800070b8:	00048513          	mv	a0,s1
    800070bc:	00000097          	auipc	ra,0x0
    800070c0:	50c080e7          	jalr	1292(ra) # 800075c8 <__memset>
    800070c4:	00093703          	ld	a4,0(s2)
    800070c8:	016487b3          	add	a5,s1,s6
    800070cc:	00e4b023          	sd	a4,0(s1)
    800070d0:	00993023          	sd	s1,0(s2)
    800070d4:	fcfa76e3          	bgeu	s4,a5,800070a0 <freerange+0x70>
    800070d8:	03813083          	ld	ra,56(sp)
    800070dc:	03013403          	ld	s0,48(sp)
    800070e0:	02813483          	ld	s1,40(sp)
    800070e4:	02013903          	ld	s2,32(sp)
    800070e8:	01813983          	ld	s3,24(sp)
    800070ec:	01013a03          	ld	s4,16(sp)
    800070f0:	00813a83          	ld	s5,8(sp)
    800070f4:	00013b03          	ld	s6,0(sp)
    800070f8:	04010113          	addi	sp,sp,64
    800070fc:	00008067          	ret
    80007100:	00001517          	auipc	a0,0x1
    80007104:	62850513          	addi	a0,a0,1576 # 80008728 <digits+0x18>
    80007108:	fffff097          	auipc	ra,0xfffff
    8000710c:	3d4080e7          	jalr	980(ra) # 800064dc <panic>

0000000080007110 <kfree>:
    80007110:	fe010113          	addi	sp,sp,-32
    80007114:	00813823          	sd	s0,16(sp)
    80007118:	00113c23          	sd	ra,24(sp)
    8000711c:	00913423          	sd	s1,8(sp)
    80007120:	02010413          	addi	s0,sp,32
    80007124:	03451793          	slli	a5,a0,0x34
    80007128:	04079c63          	bnez	a5,80007180 <kfree+0x70>
    8000712c:	00008797          	auipc	a5,0x8
    80007130:	ed478793          	addi	a5,a5,-300 # 8000f000 <end>
    80007134:	00050493          	mv	s1,a0
    80007138:	04f56463          	bltu	a0,a5,80007180 <kfree+0x70>
    8000713c:	01100793          	li	a5,17
    80007140:	01b79793          	slli	a5,a5,0x1b
    80007144:	02f57e63          	bgeu	a0,a5,80007180 <kfree+0x70>
    80007148:	00001637          	lui	a2,0x1
    8000714c:	00100593          	li	a1,1
    80007150:	00000097          	auipc	ra,0x0
    80007154:	478080e7          	jalr	1144(ra) # 800075c8 <__memset>
    80007158:	00002797          	auipc	a5,0x2
    8000715c:	88878793          	addi	a5,a5,-1912 # 800089e0 <kmem>
    80007160:	0007b703          	ld	a4,0(a5)
    80007164:	01813083          	ld	ra,24(sp)
    80007168:	01013403          	ld	s0,16(sp)
    8000716c:	00e4b023          	sd	a4,0(s1)
    80007170:	0097b023          	sd	s1,0(a5)
    80007174:	00813483          	ld	s1,8(sp)
    80007178:	02010113          	addi	sp,sp,32
    8000717c:	00008067          	ret
    80007180:	00001517          	auipc	a0,0x1
    80007184:	5a850513          	addi	a0,a0,1448 # 80008728 <digits+0x18>
    80007188:	fffff097          	auipc	ra,0xfffff
    8000718c:	354080e7          	jalr	852(ra) # 800064dc <panic>

0000000080007190 <kalloc>:
    80007190:	fe010113          	addi	sp,sp,-32
    80007194:	00813823          	sd	s0,16(sp)
    80007198:	00913423          	sd	s1,8(sp)
    8000719c:	00113c23          	sd	ra,24(sp)
    800071a0:	02010413          	addi	s0,sp,32
    800071a4:	00002797          	auipc	a5,0x2
    800071a8:	83c78793          	addi	a5,a5,-1988 # 800089e0 <kmem>
    800071ac:	0007b483          	ld	s1,0(a5)
    800071b0:	02048063          	beqz	s1,800071d0 <kalloc+0x40>
    800071b4:	0004b703          	ld	a4,0(s1)
    800071b8:	00001637          	lui	a2,0x1
    800071bc:	00500593          	li	a1,5
    800071c0:	00048513          	mv	a0,s1
    800071c4:	00e7b023          	sd	a4,0(a5)
    800071c8:	00000097          	auipc	ra,0x0
    800071cc:	400080e7          	jalr	1024(ra) # 800075c8 <__memset>
    800071d0:	01813083          	ld	ra,24(sp)
    800071d4:	01013403          	ld	s0,16(sp)
    800071d8:	00048513          	mv	a0,s1
    800071dc:	00813483          	ld	s1,8(sp)
    800071e0:	02010113          	addi	sp,sp,32
    800071e4:	00008067          	ret

00000000800071e8 <initlock>:
    800071e8:	ff010113          	addi	sp,sp,-16
    800071ec:	00813423          	sd	s0,8(sp)
    800071f0:	01010413          	addi	s0,sp,16
    800071f4:	00813403          	ld	s0,8(sp)
    800071f8:	00b53423          	sd	a1,8(a0)
    800071fc:	00052023          	sw	zero,0(a0)
    80007200:	00053823          	sd	zero,16(a0)
    80007204:	01010113          	addi	sp,sp,16
    80007208:	00008067          	ret

000000008000720c <acquire>:
    8000720c:	fe010113          	addi	sp,sp,-32
    80007210:	00813823          	sd	s0,16(sp)
    80007214:	00913423          	sd	s1,8(sp)
    80007218:	00113c23          	sd	ra,24(sp)
    8000721c:	01213023          	sd	s2,0(sp)
    80007220:	02010413          	addi	s0,sp,32
    80007224:	00050493          	mv	s1,a0
    80007228:	10002973          	csrr	s2,sstatus
    8000722c:	100027f3          	csrr	a5,sstatus
    80007230:	ffd7f793          	andi	a5,a5,-3
    80007234:	10079073          	csrw	sstatus,a5
    80007238:	fffff097          	auipc	ra,0xfffff
    8000723c:	8e4080e7          	jalr	-1820(ra) # 80005b1c <mycpu>
    80007240:	07852783          	lw	a5,120(a0)
    80007244:	06078e63          	beqz	a5,800072c0 <acquire+0xb4>
    80007248:	fffff097          	auipc	ra,0xfffff
    8000724c:	8d4080e7          	jalr	-1836(ra) # 80005b1c <mycpu>
    80007250:	07852783          	lw	a5,120(a0)
    80007254:	0004a703          	lw	a4,0(s1)
    80007258:	0017879b          	addiw	a5,a5,1
    8000725c:	06f52c23          	sw	a5,120(a0)
    80007260:	04071063          	bnez	a4,800072a0 <acquire+0x94>
    80007264:	00100713          	li	a4,1
    80007268:	00070793          	mv	a5,a4
    8000726c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007270:	0007879b          	sext.w	a5,a5
    80007274:	fe079ae3          	bnez	a5,80007268 <acquire+0x5c>
    80007278:	0ff0000f          	fence
    8000727c:	fffff097          	auipc	ra,0xfffff
    80007280:	8a0080e7          	jalr	-1888(ra) # 80005b1c <mycpu>
    80007284:	01813083          	ld	ra,24(sp)
    80007288:	01013403          	ld	s0,16(sp)
    8000728c:	00a4b823          	sd	a0,16(s1)
    80007290:	00013903          	ld	s2,0(sp)
    80007294:	00813483          	ld	s1,8(sp)
    80007298:	02010113          	addi	sp,sp,32
    8000729c:	00008067          	ret
    800072a0:	0104b903          	ld	s2,16(s1)
    800072a4:	fffff097          	auipc	ra,0xfffff
    800072a8:	878080e7          	jalr	-1928(ra) # 80005b1c <mycpu>
    800072ac:	faa91ce3          	bne	s2,a0,80007264 <acquire+0x58>
    800072b0:	00001517          	auipc	a0,0x1
    800072b4:	48050513          	addi	a0,a0,1152 # 80008730 <digits+0x20>
    800072b8:	fffff097          	auipc	ra,0xfffff
    800072bc:	224080e7          	jalr	548(ra) # 800064dc <panic>
    800072c0:	00195913          	srli	s2,s2,0x1
    800072c4:	fffff097          	auipc	ra,0xfffff
    800072c8:	858080e7          	jalr	-1960(ra) # 80005b1c <mycpu>
    800072cc:	00197913          	andi	s2,s2,1
    800072d0:	07252e23          	sw	s2,124(a0)
    800072d4:	f75ff06f          	j	80007248 <acquire+0x3c>

00000000800072d8 <release>:
    800072d8:	fe010113          	addi	sp,sp,-32
    800072dc:	00813823          	sd	s0,16(sp)
    800072e0:	00113c23          	sd	ra,24(sp)
    800072e4:	00913423          	sd	s1,8(sp)
    800072e8:	01213023          	sd	s2,0(sp)
    800072ec:	02010413          	addi	s0,sp,32
    800072f0:	00052783          	lw	a5,0(a0)
    800072f4:	00079a63          	bnez	a5,80007308 <release+0x30>
    800072f8:	00001517          	auipc	a0,0x1
    800072fc:	44050513          	addi	a0,a0,1088 # 80008738 <digits+0x28>
    80007300:	fffff097          	auipc	ra,0xfffff
    80007304:	1dc080e7          	jalr	476(ra) # 800064dc <panic>
    80007308:	01053903          	ld	s2,16(a0)
    8000730c:	00050493          	mv	s1,a0
    80007310:	fffff097          	auipc	ra,0xfffff
    80007314:	80c080e7          	jalr	-2036(ra) # 80005b1c <mycpu>
    80007318:	fea910e3          	bne	s2,a0,800072f8 <release+0x20>
    8000731c:	0004b823          	sd	zero,16(s1)
    80007320:	0ff0000f          	fence
    80007324:	0f50000f          	fence	iorw,ow
    80007328:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000732c:	ffffe097          	auipc	ra,0xffffe
    80007330:	7f0080e7          	jalr	2032(ra) # 80005b1c <mycpu>
    80007334:	100027f3          	csrr	a5,sstatus
    80007338:	0027f793          	andi	a5,a5,2
    8000733c:	04079a63          	bnez	a5,80007390 <release+0xb8>
    80007340:	07852783          	lw	a5,120(a0)
    80007344:	02f05e63          	blez	a5,80007380 <release+0xa8>
    80007348:	fff7871b          	addiw	a4,a5,-1
    8000734c:	06e52c23          	sw	a4,120(a0)
    80007350:	00071c63          	bnez	a4,80007368 <release+0x90>
    80007354:	07c52783          	lw	a5,124(a0)
    80007358:	00078863          	beqz	a5,80007368 <release+0x90>
    8000735c:	100027f3          	csrr	a5,sstatus
    80007360:	0027e793          	ori	a5,a5,2
    80007364:	10079073          	csrw	sstatus,a5
    80007368:	01813083          	ld	ra,24(sp)
    8000736c:	01013403          	ld	s0,16(sp)
    80007370:	00813483          	ld	s1,8(sp)
    80007374:	00013903          	ld	s2,0(sp)
    80007378:	02010113          	addi	sp,sp,32
    8000737c:	00008067          	ret
    80007380:	00001517          	auipc	a0,0x1
    80007384:	3d850513          	addi	a0,a0,984 # 80008758 <digits+0x48>
    80007388:	fffff097          	auipc	ra,0xfffff
    8000738c:	154080e7          	jalr	340(ra) # 800064dc <panic>
    80007390:	00001517          	auipc	a0,0x1
    80007394:	3b050513          	addi	a0,a0,944 # 80008740 <digits+0x30>
    80007398:	fffff097          	auipc	ra,0xfffff
    8000739c:	144080e7          	jalr	324(ra) # 800064dc <panic>

00000000800073a0 <holding>:
    800073a0:	00052783          	lw	a5,0(a0)
    800073a4:	00079663          	bnez	a5,800073b0 <holding+0x10>
    800073a8:	00000513          	li	a0,0
    800073ac:	00008067          	ret
    800073b0:	fe010113          	addi	sp,sp,-32
    800073b4:	00813823          	sd	s0,16(sp)
    800073b8:	00913423          	sd	s1,8(sp)
    800073bc:	00113c23          	sd	ra,24(sp)
    800073c0:	02010413          	addi	s0,sp,32
    800073c4:	01053483          	ld	s1,16(a0)
    800073c8:	ffffe097          	auipc	ra,0xffffe
    800073cc:	754080e7          	jalr	1876(ra) # 80005b1c <mycpu>
    800073d0:	01813083          	ld	ra,24(sp)
    800073d4:	01013403          	ld	s0,16(sp)
    800073d8:	40a48533          	sub	a0,s1,a0
    800073dc:	00153513          	seqz	a0,a0
    800073e0:	00813483          	ld	s1,8(sp)
    800073e4:	02010113          	addi	sp,sp,32
    800073e8:	00008067          	ret

00000000800073ec <push_off>:
    800073ec:	fe010113          	addi	sp,sp,-32
    800073f0:	00813823          	sd	s0,16(sp)
    800073f4:	00113c23          	sd	ra,24(sp)
    800073f8:	00913423          	sd	s1,8(sp)
    800073fc:	02010413          	addi	s0,sp,32
    80007400:	100024f3          	csrr	s1,sstatus
    80007404:	100027f3          	csrr	a5,sstatus
    80007408:	ffd7f793          	andi	a5,a5,-3
    8000740c:	10079073          	csrw	sstatus,a5
    80007410:	ffffe097          	auipc	ra,0xffffe
    80007414:	70c080e7          	jalr	1804(ra) # 80005b1c <mycpu>
    80007418:	07852783          	lw	a5,120(a0)
    8000741c:	02078663          	beqz	a5,80007448 <push_off+0x5c>
    80007420:	ffffe097          	auipc	ra,0xffffe
    80007424:	6fc080e7          	jalr	1788(ra) # 80005b1c <mycpu>
    80007428:	07852783          	lw	a5,120(a0)
    8000742c:	01813083          	ld	ra,24(sp)
    80007430:	01013403          	ld	s0,16(sp)
    80007434:	0017879b          	addiw	a5,a5,1
    80007438:	06f52c23          	sw	a5,120(a0)
    8000743c:	00813483          	ld	s1,8(sp)
    80007440:	02010113          	addi	sp,sp,32
    80007444:	00008067          	ret
    80007448:	0014d493          	srli	s1,s1,0x1
    8000744c:	ffffe097          	auipc	ra,0xffffe
    80007450:	6d0080e7          	jalr	1744(ra) # 80005b1c <mycpu>
    80007454:	0014f493          	andi	s1,s1,1
    80007458:	06952e23          	sw	s1,124(a0)
    8000745c:	fc5ff06f          	j	80007420 <push_off+0x34>

0000000080007460 <pop_off>:
    80007460:	ff010113          	addi	sp,sp,-16
    80007464:	00813023          	sd	s0,0(sp)
    80007468:	00113423          	sd	ra,8(sp)
    8000746c:	01010413          	addi	s0,sp,16
    80007470:	ffffe097          	auipc	ra,0xffffe
    80007474:	6ac080e7          	jalr	1708(ra) # 80005b1c <mycpu>
    80007478:	100027f3          	csrr	a5,sstatus
    8000747c:	0027f793          	andi	a5,a5,2
    80007480:	04079663          	bnez	a5,800074cc <pop_off+0x6c>
    80007484:	07852783          	lw	a5,120(a0)
    80007488:	02f05a63          	blez	a5,800074bc <pop_off+0x5c>
    8000748c:	fff7871b          	addiw	a4,a5,-1
    80007490:	06e52c23          	sw	a4,120(a0)
    80007494:	00071c63          	bnez	a4,800074ac <pop_off+0x4c>
    80007498:	07c52783          	lw	a5,124(a0)
    8000749c:	00078863          	beqz	a5,800074ac <pop_off+0x4c>
    800074a0:	100027f3          	csrr	a5,sstatus
    800074a4:	0027e793          	ori	a5,a5,2
    800074a8:	10079073          	csrw	sstatus,a5
    800074ac:	00813083          	ld	ra,8(sp)
    800074b0:	00013403          	ld	s0,0(sp)
    800074b4:	01010113          	addi	sp,sp,16
    800074b8:	00008067          	ret
    800074bc:	00001517          	auipc	a0,0x1
    800074c0:	29c50513          	addi	a0,a0,668 # 80008758 <digits+0x48>
    800074c4:	fffff097          	auipc	ra,0xfffff
    800074c8:	018080e7          	jalr	24(ra) # 800064dc <panic>
    800074cc:	00001517          	auipc	a0,0x1
    800074d0:	27450513          	addi	a0,a0,628 # 80008740 <digits+0x30>
    800074d4:	fffff097          	auipc	ra,0xfffff
    800074d8:	008080e7          	jalr	8(ra) # 800064dc <panic>

00000000800074dc <push_on>:
    800074dc:	fe010113          	addi	sp,sp,-32
    800074e0:	00813823          	sd	s0,16(sp)
    800074e4:	00113c23          	sd	ra,24(sp)
    800074e8:	00913423          	sd	s1,8(sp)
    800074ec:	02010413          	addi	s0,sp,32
    800074f0:	100024f3          	csrr	s1,sstatus
    800074f4:	100027f3          	csrr	a5,sstatus
    800074f8:	0027e793          	ori	a5,a5,2
    800074fc:	10079073          	csrw	sstatus,a5
    80007500:	ffffe097          	auipc	ra,0xffffe
    80007504:	61c080e7          	jalr	1564(ra) # 80005b1c <mycpu>
    80007508:	07852783          	lw	a5,120(a0)
    8000750c:	02078663          	beqz	a5,80007538 <push_on+0x5c>
    80007510:	ffffe097          	auipc	ra,0xffffe
    80007514:	60c080e7          	jalr	1548(ra) # 80005b1c <mycpu>
    80007518:	07852783          	lw	a5,120(a0)
    8000751c:	01813083          	ld	ra,24(sp)
    80007520:	01013403          	ld	s0,16(sp)
    80007524:	0017879b          	addiw	a5,a5,1
    80007528:	06f52c23          	sw	a5,120(a0)
    8000752c:	00813483          	ld	s1,8(sp)
    80007530:	02010113          	addi	sp,sp,32
    80007534:	00008067          	ret
    80007538:	0014d493          	srli	s1,s1,0x1
    8000753c:	ffffe097          	auipc	ra,0xffffe
    80007540:	5e0080e7          	jalr	1504(ra) # 80005b1c <mycpu>
    80007544:	0014f493          	andi	s1,s1,1
    80007548:	06952e23          	sw	s1,124(a0)
    8000754c:	fc5ff06f          	j	80007510 <push_on+0x34>

0000000080007550 <pop_on>:
    80007550:	ff010113          	addi	sp,sp,-16
    80007554:	00813023          	sd	s0,0(sp)
    80007558:	00113423          	sd	ra,8(sp)
    8000755c:	01010413          	addi	s0,sp,16
    80007560:	ffffe097          	auipc	ra,0xffffe
    80007564:	5bc080e7          	jalr	1468(ra) # 80005b1c <mycpu>
    80007568:	100027f3          	csrr	a5,sstatus
    8000756c:	0027f793          	andi	a5,a5,2
    80007570:	04078463          	beqz	a5,800075b8 <pop_on+0x68>
    80007574:	07852783          	lw	a5,120(a0)
    80007578:	02f05863          	blez	a5,800075a8 <pop_on+0x58>
    8000757c:	fff7879b          	addiw	a5,a5,-1
    80007580:	06f52c23          	sw	a5,120(a0)
    80007584:	07853783          	ld	a5,120(a0)
    80007588:	00079863          	bnez	a5,80007598 <pop_on+0x48>
    8000758c:	100027f3          	csrr	a5,sstatus
    80007590:	ffd7f793          	andi	a5,a5,-3
    80007594:	10079073          	csrw	sstatus,a5
    80007598:	00813083          	ld	ra,8(sp)
    8000759c:	00013403          	ld	s0,0(sp)
    800075a0:	01010113          	addi	sp,sp,16
    800075a4:	00008067          	ret
    800075a8:	00001517          	auipc	a0,0x1
    800075ac:	1d850513          	addi	a0,a0,472 # 80008780 <digits+0x70>
    800075b0:	fffff097          	auipc	ra,0xfffff
    800075b4:	f2c080e7          	jalr	-212(ra) # 800064dc <panic>
    800075b8:	00001517          	auipc	a0,0x1
    800075bc:	1a850513          	addi	a0,a0,424 # 80008760 <digits+0x50>
    800075c0:	fffff097          	auipc	ra,0xfffff
    800075c4:	f1c080e7          	jalr	-228(ra) # 800064dc <panic>

00000000800075c8 <__memset>:
    800075c8:	ff010113          	addi	sp,sp,-16
    800075cc:	00813423          	sd	s0,8(sp)
    800075d0:	01010413          	addi	s0,sp,16
    800075d4:	1a060e63          	beqz	a2,80007790 <__memset+0x1c8>
    800075d8:	40a007b3          	neg	a5,a0
    800075dc:	0077f793          	andi	a5,a5,7
    800075e0:	00778693          	addi	a3,a5,7
    800075e4:	00b00813          	li	a6,11
    800075e8:	0ff5f593          	andi	a1,a1,255
    800075ec:	fff6071b          	addiw	a4,a2,-1
    800075f0:	1b06e663          	bltu	a3,a6,8000779c <__memset+0x1d4>
    800075f4:	1cd76463          	bltu	a4,a3,800077bc <__memset+0x1f4>
    800075f8:	1a078e63          	beqz	a5,800077b4 <__memset+0x1ec>
    800075fc:	00b50023          	sb	a1,0(a0)
    80007600:	00100713          	li	a4,1
    80007604:	1ae78463          	beq	a5,a4,800077ac <__memset+0x1e4>
    80007608:	00b500a3          	sb	a1,1(a0)
    8000760c:	00200713          	li	a4,2
    80007610:	1ae78a63          	beq	a5,a4,800077c4 <__memset+0x1fc>
    80007614:	00b50123          	sb	a1,2(a0)
    80007618:	00300713          	li	a4,3
    8000761c:	18e78463          	beq	a5,a4,800077a4 <__memset+0x1dc>
    80007620:	00b501a3          	sb	a1,3(a0)
    80007624:	00400713          	li	a4,4
    80007628:	1ae78263          	beq	a5,a4,800077cc <__memset+0x204>
    8000762c:	00b50223          	sb	a1,4(a0)
    80007630:	00500713          	li	a4,5
    80007634:	1ae78063          	beq	a5,a4,800077d4 <__memset+0x20c>
    80007638:	00b502a3          	sb	a1,5(a0)
    8000763c:	00700713          	li	a4,7
    80007640:	18e79e63          	bne	a5,a4,800077dc <__memset+0x214>
    80007644:	00b50323          	sb	a1,6(a0)
    80007648:	00700e93          	li	t4,7
    8000764c:	00859713          	slli	a4,a1,0x8
    80007650:	00e5e733          	or	a4,a1,a4
    80007654:	01059e13          	slli	t3,a1,0x10
    80007658:	01c76e33          	or	t3,a4,t3
    8000765c:	01859313          	slli	t1,a1,0x18
    80007660:	006e6333          	or	t1,t3,t1
    80007664:	02059893          	slli	a7,a1,0x20
    80007668:	40f60e3b          	subw	t3,a2,a5
    8000766c:	011368b3          	or	a7,t1,a7
    80007670:	02859813          	slli	a6,a1,0x28
    80007674:	0108e833          	or	a6,a7,a6
    80007678:	03059693          	slli	a3,a1,0x30
    8000767c:	003e589b          	srliw	a7,t3,0x3
    80007680:	00d866b3          	or	a3,a6,a3
    80007684:	03859713          	slli	a4,a1,0x38
    80007688:	00389813          	slli	a6,a7,0x3
    8000768c:	00f507b3          	add	a5,a0,a5
    80007690:	00e6e733          	or	a4,a3,a4
    80007694:	000e089b          	sext.w	a7,t3
    80007698:	00f806b3          	add	a3,a6,a5
    8000769c:	00e7b023          	sd	a4,0(a5)
    800076a0:	00878793          	addi	a5,a5,8
    800076a4:	fed79ce3          	bne	a5,a3,8000769c <__memset+0xd4>
    800076a8:	ff8e7793          	andi	a5,t3,-8
    800076ac:	0007871b          	sext.w	a4,a5
    800076b0:	01d787bb          	addw	a5,a5,t4
    800076b4:	0ce88e63          	beq	a7,a4,80007790 <__memset+0x1c8>
    800076b8:	00f50733          	add	a4,a0,a5
    800076bc:	00b70023          	sb	a1,0(a4)
    800076c0:	0017871b          	addiw	a4,a5,1
    800076c4:	0cc77663          	bgeu	a4,a2,80007790 <__memset+0x1c8>
    800076c8:	00e50733          	add	a4,a0,a4
    800076cc:	00b70023          	sb	a1,0(a4)
    800076d0:	0027871b          	addiw	a4,a5,2
    800076d4:	0ac77e63          	bgeu	a4,a2,80007790 <__memset+0x1c8>
    800076d8:	00e50733          	add	a4,a0,a4
    800076dc:	00b70023          	sb	a1,0(a4)
    800076e0:	0037871b          	addiw	a4,a5,3
    800076e4:	0ac77663          	bgeu	a4,a2,80007790 <__memset+0x1c8>
    800076e8:	00e50733          	add	a4,a0,a4
    800076ec:	00b70023          	sb	a1,0(a4)
    800076f0:	0047871b          	addiw	a4,a5,4
    800076f4:	08c77e63          	bgeu	a4,a2,80007790 <__memset+0x1c8>
    800076f8:	00e50733          	add	a4,a0,a4
    800076fc:	00b70023          	sb	a1,0(a4)
    80007700:	0057871b          	addiw	a4,a5,5
    80007704:	08c77663          	bgeu	a4,a2,80007790 <__memset+0x1c8>
    80007708:	00e50733          	add	a4,a0,a4
    8000770c:	00b70023          	sb	a1,0(a4)
    80007710:	0067871b          	addiw	a4,a5,6
    80007714:	06c77e63          	bgeu	a4,a2,80007790 <__memset+0x1c8>
    80007718:	00e50733          	add	a4,a0,a4
    8000771c:	00b70023          	sb	a1,0(a4)
    80007720:	0077871b          	addiw	a4,a5,7
    80007724:	06c77663          	bgeu	a4,a2,80007790 <__memset+0x1c8>
    80007728:	00e50733          	add	a4,a0,a4
    8000772c:	00b70023          	sb	a1,0(a4)
    80007730:	0087871b          	addiw	a4,a5,8
    80007734:	04c77e63          	bgeu	a4,a2,80007790 <__memset+0x1c8>
    80007738:	00e50733          	add	a4,a0,a4
    8000773c:	00b70023          	sb	a1,0(a4)
    80007740:	0097871b          	addiw	a4,a5,9
    80007744:	04c77663          	bgeu	a4,a2,80007790 <__memset+0x1c8>
    80007748:	00e50733          	add	a4,a0,a4
    8000774c:	00b70023          	sb	a1,0(a4)
    80007750:	00a7871b          	addiw	a4,a5,10
    80007754:	02c77e63          	bgeu	a4,a2,80007790 <__memset+0x1c8>
    80007758:	00e50733          	add	a4,a0,a4
    8000775c:	00b70023          	sb	a1,0(a4)
    80007760:	00b7871b          	addiw	a4,a5,11
    80007764:	02c77663          	bgeu	a4,a2,80007790 <__memset+0x1c8>
    80007768:	00e50733          	add	a4,a0,a4
    8000776c:	00b70023          	sb	a1,0(a4)
    80007770:	00c7871b          	addiw	a4,a5,12
    80007774:	00c77e63          	bgeu	a4,a2,80007790 <__memset+0x1c8>
    80007778:	00e50733          	add	a4,a0,a4
    8000777c:	00b70023          	sb	a1,0(a4)
    80007780:	00d7879b          	addiw	a5,a5,13
    80007784:	00c7f663          	bgeu	a5,a2,80007790 <__memset+0x1c8>
    80007788:	00f507b3          	add	a5,a0,a5
    8000778c:	00b78023          	sb	a1,0(a5)
    80007790:	00813403          	ld	s0,8(sp)
    80007794:	01010113          	addi	sp,sp,16
    80007798:	00008067          	ret
    8000779c:	00b00693          	li	a3,11
    800077a0:	e55ff06f          	j	800075f4 <__memset+0x2c>
    800077a4:	00300e93          	li	t4,3
    800077a8:	ea5ff06f          	j	8000764c <__memset+0x84>
    800077ac:	00100e93          	li	t4,1
    800077b0:	e9dff06f          	j	8000764c <__memset+0x84>
    800077b4:	00000e93          	li	t4,0
    800077b8:	e95ff06f          	j	8000764c <__memset+0x84>
    800077bc:	00000793          	li	a5,0
    800077c0:	ef9ff06f          	j	800076b8 <__memset+0xf0>
    800077c4:	00200e93          	li	t4,2
    800077c8:	e85ff06f          	j	8000764c <__memset+0x84>
    800077cc:	00400e93          	li	t4,4
    800077d0:	e7dff06f          	j	8000764c <__memset+0x84>
    800077d4:	00500e93          	li	t4,5
    800077d8:	e75ff06f          	j	8000764c <__memset+0x84>
    800077dc:	00600e93          	li	t4,6
    800077e0:	e6dff06f          	j	8000764c <__memset+0x84>

00000000800077e4 <__memmove>:
    800077e4:	ff010113          	addi	sp,sp,-16
    800077e8:	00813423          	sd	s0,8(sp)
    800077ec:	01010413          	addi	s0,sp,16
    800077f0:	0e060863          	beqz	a2,800078e0 <__memmove+0xfc>
    800077f4:	fff6069b          	addiw	a3,a2,-1
    800077f8:	0006881b          	sext.w	a6,a3
    800077fc:	0ea5e863          	bltu	a1,a0,800078ec <__memmove+0x108>
    80007800:	00758713          	addi	a4,a1,7
    80007804:	00a5e7b3          	or	a5,a1,a0
    80007808:	40a70733          	sub	a4,a4,a0
    8000780c:	0077f793          	andi	a5,a5,7
    80007810:	00f73713          	sltiu	a4,a4,15
    80007814:	00174713          	xori	a4,a4,1
    80007818:	0017b793          	seqz	a5,a5
    8000781c:	00e7f7b3          	and	a5,a5,a4
    80007820:	10078863          	beqz	a5,80007930 <__memmove+0x14c>
    80007824:	00900793          	li	a5,9
    80007828:	1107f463          	bgeu	a5,a6,80007930 <__memmove+0x14c>
    8000782c:	0036581b          	srliw	a6,a2,0x3
    80007830:	fff8081b          	addiw	a6,a6,-1
    80007834:	02081813          	slli	a6,a6,0x20
    80007838:	01d85893          	srli	a7,a6,0x1d
    8000783c:	00858813          	addi	a6,a1,8
    80007840:	00058793          	mv	a5,a1
    80007844:	00050713          	mv	a4,a0
    80007848:	01088833          	add	a6,a7,a6
    8000784c:	0007b883          	ld	a7,0(a5)
    80007850:	00878793          	addi	a5,a5,8
    80007854:	00870713          	addi	a4,a4,8
    80007858:	ff173c23          	sd	a7,-8(a4)
    8000785c:	ff0798e3          	bne	a5,a6,8000784c <__memmove+0x68>
    80007860:	ff867713          	andi	a4,a2,-8
    80007864:	02071793          	slli	a5,a4,0x20
    80007868:	0207d793          	srli	a5,a5,0x20
    8000786c:	00f585b3          	add	a1,a1,a5
    80007870:	40e686bb          	subw	a3,a3,a4
    80007874:	00f507b3          	add	a5,a0,a5
    80007878:	06e60463          	beq	a2,a4,800078e0 <__memmove+0xfc>
    8000787c:	0005c703          	lbu	a4,0(a1)
    80007880:	00e78023          	sb	a4,0(a5)
    80007884:	04068e63          	beqz	a3,800078e0 <__memmove+0xfc>
    80007888:	0015c603          	lbu	a2,1(a1)
    8000788c:	00100713          	li	a4,1
    80007890:	00c780a3          	sb	a2,1(a5)
    80007894:	04e68663          	beq	a3,a4,800078e0 <__memmove+0xfc>
    80007898:	0025c603          	lbu	a2,2(a1)
    8000789c:	00200713          	li	a4,2
    800078a0:	00c78123          	sb	a2,2(a5)
    800078a4:	02e68e63          	beq	a3,a4,800078e0 <__memmove+0xfc>
    800078a8:	0035c603          	lbu	a2,3(a1)
    800078ac:	00300713          	li	a4,3
    800078b0:	00c781a3          	sb	a2,3(a5)
    800078b4:	02e68663          	beq	a3,a4,800078e0 <__memmove+0xfc>
    800078b8:	0045c603          	lbu	a2,4(a1)
    800078bc:	00400713          	li	a4,4
    800078c0:	00c78223          	sb	a2,4(a5)
    800078c4:	00e68e63          	beq	a3,a4,800078e0 <__memmove+0xfc>
    800078c8:	0055c603          	lbu	a2,5(a1)
    800078cc:	00500713          	li	a4,5
    800078d0:	00c782a3          	sb	a2,5(a5)
    800078d4:	00e68663          	beq	a3,a4,800078e0 <__memmove+0xfc>
    800078d8:	0065c703          	lbu	a4,6(a1)
    800078dc:	00e78323          	sb	a4,6(a5)
    800078e0:	00813403          	ld	s0,8(sp)
    800078e4:	01010113          	addi	sp,sp,16
    800078e8:	00008067          	ret
    800078ec:	02061713          	slli	a4,a2,0x20
    800078f0:	02075713          	srli	a4,a4,0x20
    800078f4:	00e587b3          	add	a5,a1,a4
    800078f8:	f0f574e3          	bgeu	a0,a5,80007800 <__memmove+0x1c>
    800078fc:	02069613          	slli	a2,a3,0x20
    80007900:	02065613          	srli	a2,a2,0x20
    80007904:	fff64613          	not	a2,a2
    80007908:	00e50733          	add	a4,a0,a4
    8000790c:	00c78633          	add	a2,a5,a2
    80007910:	fff7c683          	lbu	a3,-1(a5)
    80007914:	fff78793          	addi	a5,a5,-1
    80007918:	fff70713          	addi	a4,a4,-1
    8000791c:	00d70023          	sb	a3,0(a4)
    80007920:	fec798e3          	bne	a5,a2,80007910 <__memmove+0x12c>
    80007924:	00813403          	ld	s0,8(sp)
    80007928:	01010113          	addi	sp,sp,16
    8000792c:	00008067          	ret
    80007930:	02069713          	slli	a4,a3,0x20
    80007934:	02075713          	srli	a4,a4,0x20
    80007938:	00170713          	addi	a4,a4,1
    8000793c:	00e50733          	add	a4,a0,a4
    80007940:	00050793          	mv	a5,a0
    80007944:	0005c683          	lbu	a3,0(a1)
    80007948:	00178793          	addi	a5,a5,1
    8000794c:	00158593          	addi	a1,a1,1
    80007950:	fed78fa3          	sb	a3,-1(a5)
    80007954:	fee798e3          	bne	a5,a4,80007944 <__memmove+0x160>
    80007958:	f89ff06f          	j	800078e0 <__memmove+0xfc>
	...

Disassembly of section .user:

000000008000b758 <copy_and_swap-0x8a8>:
	...

000000008000c000 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    8000c000:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    8000c004:	00b29a63          	bne	t0,a1,8000c018 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000c008:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    8000c00c:	fe029ae3          	bnez	t0,8000c000 <copy_and_swap>
    li a0, 0               # Set return to success.
    8000c010:	00000513          	li	a0,0
    jr ra                  # Return.
    8000c014:	00008067          	ret

000000008000c018 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000c018:	00100513          	li	a0,1
    8000c01c:	00008067          	ret

000000008000c020 <_Z9mem_allocm>:
//

#include "../../h/syscall_c.hpp"

void* mem_alloc(size_t size)
{
    8000c020:	ff010113          	addi	sp,sp,-16
    8000c024:	00813423          	sd	s0,8(sp)
    8000c028:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    8000c02c:	03f50513          	addi	a0,a0,63
    8000c030:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    8000c034:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 1");
    8000c038:	00100513          	li	a0,1

    __asm__ volatile("ecall"); // system call
    8000c03c:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    8000c040:	00050513          	mv	a0,a0

    if(allocatedAddr == 0)
        return nullptr;

    return (void*)allocatedAddr;
}
    8000c044:	00813403          	ld	s0,8(sp)
    8000c048:	01010113          	addi	sp,sp,16
    8000c04c:	00008067          	ret

000000008000c050 <_Z8mem_freePv>:

int mem_free(void* p)
{
    8000c050:	ff010113          	addi	sp,sp,-16
    8000c054:	00813423          	sd	s0,8(sp)
    8000c058:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    8000c05c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 2");
    8000c060:	00200513          	li	a0,2

    __asm__ volatile("ecall"); // system call
    8000c064:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c068:	00050513          	mv	a0,a0

    return result;
}
    8000c06c:	0005051b          	sext.w	a0,a0
    8000c070:	00813403          	ld	s0,8(sp)
    8000c074:	01010113          	addi	sp,sp,16
    8000c078:	00008067          	ret

000000008000c07c <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    8000c07c:	fd010113          	addi	sp,sp,-48
    8000c080:	02113423          	sd	ra,40(sp)
    8000c084:	02813023          	sd	s0,32(sp)
    8000c088:	00913c23          	sd	s1,24(sp)
    8000c08c:	01213823          	sd	s2,16(sp)
    8000c090:	01313423          	sd	s3,8(sp)
    8000c094:	03010413          	addi	s0,sp,48
    8000c098:	00050493          	mv	s1,a0
    8000c09c:	00058913          	mv	s2,a1
    8000c0a0:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)args;
    uint64 opLocal = 0x11;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    8000c0a4:	00001537          	lui	a0,0x1
    8000c0a8:	00000097          	auipc	ra,0x0
    8000c0ac:	f78080e7          	jalr	-136(ra) # 8000c020 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == nullptr)
    8000c0b0:	04050a63          	beqz	a0,8000c104 <_Z13thread_createPP7_threadPFvPvES2_+0x88>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    8000c0b4:	00050713          	mv	a4,a0
    //__asm__ volatile("mv a4, %0" :  : "r"((uint64)1));
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    8000c0b8:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    8000c0bc:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    8000c0c0:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    8000c0c4:	01100793          	li	a5,17
    8000c0c8:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    8000c0cc:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c0d0:	00050493          	mv	s1,a0

    if(result != 0)
    8000c0d4:	02049263          	bnez	s1,8000c0f8 <_Z13thread_createPP7_threadPFvPvES2_+0x7c>
    {
        mem_free(stack_space);
    }

    return result;
    8000c0d8:	0004851b          	sext.w	a0,s1
}
    8000c0dc:	02813083          	ld	ra,40(sp)
    8000c0e0:	02013403          	ld	s0,32(sp)
    8000c0e4:	01813483          	ld	s1,24(sp)
    8000c0e8:	01013903          	ld	s2,16(sp)
    8000c0ec:	00813983          	ld	s3,8(sp)
    8000c0f0:	03010113          	addi	sp,sp,48
    8000c0f4:	00008067          	ret
        mem_free(stack_space);
    8000c0f8:	00000097          	auipc	ra,0x0
    8000c0fc:	f58080e7          	jalr	-168(ra) # 8000c050 <_Z8mem_freePv>
    8000c100:	fd9ff06f          	j	8000c0d8 <_Z13thread_createPP7_threadPFvPvES2_+0x5c>
        return -1;
    8000c104:	fff00513          	li	a0,-1
    8000c108:	fd5ff06f          	j	8000c0dc <_Z13thread_createPP7_threadPFvPvES2_+0x60>

000000008000c10c <_Z15thread_dispatchv>:

void thread_dispatch()
{
    8000c10c:	ff010113          	addi	sp,sp,-16
    8000c110:	00813423          	sd	s0,8(sp)
    8000c114:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    8000c118:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    8000c11c:	00000073          	ecall
}
    8000c120:	00813403          	ld	s0,8(sp)
    8000c124:	01010113          	addi	sp,sp,16
    8000c128:	00008067          	ret

000000008000c12c <_Z11thread_exitv>:

int thread_exit()
{
    8000c12c:	ff010113          	addi	sp,sp,-16
    8000c130:	00813423          	sd	s0,8(sp)
    8000c134:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    8000c138:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    8000c13c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c140:	00050513          	mv	a0,a0
    return result;
}
    8000c144:	0005051b          	sext.w	a0,a0
    8000c148:	00813403          	ld	s0,8(sp)
    8000c14c:	01010113          	addi	sp,sp,16
    8000c150:	00008067          	ret

000000008000c154 <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned int x)
{
    8000c154:	ff010113          	addi	sp,sp,-16
    8000c158:	00813423          	sd	s0,8(sp)
    8000c15c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)x));
    8000c160:	02059593          	slli	a1,a1,0x20
    8000c164:	0205d593          	srli	a1,a1,0x20
    8000c168:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    8000c16c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    8000c170:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    8000c174:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c178:	00050513          	mv	a0,a0
    return result;
}
    8000c17c:	0005051b          	sext.w	a0,a0
    8000c180:	00813403          	ld	s0,8(sp)
    8000c184:	01010113          	addi	sp,sp,16
    8000c188:	00008067          	ret

000000008000c18c <_Z9sem_closeP4_sem>:


int sem_close(sem_t handle)
{
    8000c18c:	ff010113          	addi	sp,sp,-16
    8000c190:	00813423          	sd	s0,8(sp)
    8000c194:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    8000c198:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    8000c19c:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    8000c1a0:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c1a4:	00050513          	mv	a0,a0
    return result;
}
    8000c1a8:	0005051b          	sext.w	a0,a0
    8000c1ac:	00813403          	ld	s0,8(sp)
    8000c1b0:	01010113          	addi	sp,sp,16
    8000c1b4:	00008067          	ret

000000008000c1b8 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id)
{
    8000c1b8:	ff010113          	addi	sp,sp,-16
    8000c1bc:	00813423          	sd	s0,8(sp)
    8000c1c0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    8000c1c4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    8000c1c8:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    8000c1cc:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c1d0:	00050513          	mv	a0,a0
    return result;
}
    8000c1d4:	0005051b          	sext.w	a0,a0
    8000c1d8:	00813403          	ld	s0,8(sp)
    8000c1dc:	01010113          	addi	sp,sp,16
    8000c1e0:	00008067          	ret

000000008000c1e4 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id)
{
    8000c1e4:	ff010113          	addi	sp,sp,-16
    8000c1e8:	00813423          	sd	s0,8(sp)
    8000c1ec:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    8000c1f0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    8000c1f4:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    8000c1f8:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c1fc:	00050513          	mv	a0,a0
    return result;
}
    8000c200:	0005051b          	sext.w	a0,a0
    8000c204:	00813403          	ld	s0,8(sp)
    8000c208:	01010113          	addi	sp,sp,16
    8000c20c:	00008067          	ret

000000008000c210 <_Z10time_sleepm>:

int time_sleep(uint64 time)
{
    8000c210:	ff010113          	addi	sp,sp,-16
    8000c214:	00813423          	sd	s0,8(sp)
    8000c218:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)time));
    8000c21c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    8000c220:	03100513          	li	a0,49

    __asm__ volatile("ecall");
    8000c224:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c228:	00050513          	mv	a0,a0
    return result;
}
    8000c22c:	0005051b          	sext.w	a0,a0
    8000c230:	00813403          	ld	s0,8(sp)
    8000c234:	01010113          	addi	sp,sp,16
    8000c238:	00008067          	ret

000000008000c23c <_Z12thread_startPv>:

int thread_start(void* p)
{
    8000c23c:	ff010113          	addi	sp,sp,-16
    8000c240:	00813423          	sd	s0,8(sp)
    8000c244:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)p));
    8000c248:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x15");
    8000c24c:	01500513          	li	a0,21

    __asm__ volatile("ecall");
    8000c250:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c254:	00050513          	mv	a0,a0
    return result;
}
    8000c258:	0005051b          	sext.w	a0,a0
    8000c25c:	00813403          	ld	s0,8(sp)
    8000c260:	01010113          	addi	sp,sp,16
    8000c264:	00008067          	ret

000000008000c268 <_Z15thread_make_pcbPP7_threadPFvPvES2_>:

int thread_make_pcb(thread_t* handle, void(*start_routine)(void*), void *arg)
{
    8000c268:	fd010113          	addi	sp,sp,-48
    8000c26c:	02113423          	sd	ra,40(sp)
    8000c270:	02813023          	sd	s0,32(sp)
    8000c274:	00913c23          	sd	s1,24(sp)
    8000c278:	01213823          	sd	s2,16(sp)
    8000c27c:	01313423          	sd	s3,8(sp)
    8000c280:	03010413          	addi	s0,sp,48
    8000c284:	00050493          	mv	s1,a0
    8000c288:	00058913          	mv	s2,a1
    8000c28c:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)arg;
    uint64 opLocal = 0x14;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    8000c290:	00001537          	lui	a0,0x1
    8000c294:	00000097          	auipc	ra,0x0
    8000c298:	d8c080e7          	jalr	-628(ra) # 8000c020 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == 0)
    8000c29c:	04050a63          	beqz	a0,8000c2f0 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x88>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    8000c2a0:	00050713          	mv	a4,a0
    //__asm__ volatile("mv a4, %0" :  : "r"((uint64)1));
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    8000c2a4:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    8000c2a8:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    8000c2ac:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    8000c2b0:	01400793          	li	a5,20
    8000c2b4:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    8000c2b8:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c2bc:	00050493          	mv	s1,a0

    if(result != 0)
    8000c2c0:	02049263          	bnez	s1,8000c2e4 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x7c>
    {
        mem_free(stack_space);
    }

    return result;
    8000c2c4:	0004851b          	sext.w	a0,s1
}
    8000c2c8:	02813083          	ld	ra,40(sp)
    8000c2cc:	02013403          	ld	s0,32(sp)
    8000c2d0:	01813483          	ld	s1,24(sp)
    8000c2d4:	01013903          	ld	s2,16(sp)
    8000c2d8:	00813983          	ld	s3,8(sp)
    8000c2dc:	03010113          	addi	sp,sp,48
    8000c2e0:	00008067          	ret
        mem_free(stack_space);
    8000c2e4:	00000097          	auipc	ra,0x0
    8000c2e8:	d6c080e7          	jalr	-660(ra) # 8000c050 <_Z8mem_freePv>
    8000c2ec:	fd9ff06f          	j	8000c2c4 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x5c>
        return -1;
    8000c2f0:	fff00513          	li	a0,-1
    8000c2f4:	fd5ff06f          	j	8000c2c8 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x60>

000000008000c2f8 <_Z4getcv>:

char getc()
{
    8000c2f8:	ff010113          	addi	sp,sp,-16
    8000c2fc:	00813423          	sd	s0,8(sp)
    8000c300:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    8000c304:	04100513          	li	a0,65

    __asm__ volatile("ecall");
    8000c308:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c30c:	00050513          	mv	a0,a0
    return (char)result;
}
    8000c310:	0ff57513          	andi	a0,a0,255
    8000c314:	00813403          	ld	s0,8(sp)
    8000c318:	01010113          	addi	sp,sp,16
    8000c31c:	00008067          	ret

000000008000c320 <_Z4putcc>:

void putc(char c)
{
    8000c320:	ff010113          	addi	sp,sp,-16
    8000c324:	00813423          	sd	s0,8(sp)
    8000c328:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)c));
    8000c32c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    8000c330:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    8000c334:	00000073          	ecall
}
    8000c338:	00813403          	ld	s0,8(sp)
    8000c33c:	01010113          	addi	sp,sp,16
    8000c340:	00008067          	ret

000000008000c344 <_Z17thread_delete_pcbP7_thread>:
//    __asm__ volatile("mv %0, a0" : "=r"(result));
//    return (char)result;
//}

int thread_delete_pcb(thread_t handle)
{
    8000c344:	ff010113          	addi	sp,sp,-16
    8000c348:	00813423          	sd	s0,8(sp)
    8000c34c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    8000c350:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x16");
    8000c354:	01600513          	li	a0,22
    __asm__ volatile("ecall");
    8000c358:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000c35c:	00050513          	mv	a0,a0
    return (char)result;
}
    8000c360:	0ff57513          	andi	a0,a0,255
    8000c364:	00813403          	ld	s0,8(sp)
    8000c368:	01010113          	addi	sp,sp,16
    8000c36c:	00008067          	ret

000000008000c370 <_ZN7_threaddlEPv>:
//

#include "../../h/_thread.hpp"
#include "../../h/syscall_c.hpp"

void _thread::operator delete(void *p) {
    8000c370:	ff010113          	addi	sp,sp,-16
    8000c374:	00113423          	sd	ra,8(sp)
    8000c378:	00813023          	sd	s0,0(sp)
    8000c37c:	01010413          	addi	s0,sp,16
    thread_delete_pcb((thread_t)p);
    8000c380:	00000097          	auipc	ra,0x0
    8000c384:	fc4080e7          	jalr	-60(ra) # 8000c344 <_Z17thread_delete_pcbP7_thread>
    8000c388:	00813083          	ld	ra,8(sp)
    8000c38c:	00013403          	ld	s0,0(sp)
    8000c390:	01010113          	addi	sp,sp,16
    8000c394:	00008067          	ret

000000008000c398 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000c398:	fe010113          	addi	sp,sp,-32
    8000c39c:	00113c23          	sd	ra,24(sp)
    8000c3a0:	00813823          	sd	s0,16(sp)
    8000c3a4:	00913423          	sd	s1,8(sp)
    8000c3a8:	02010413          	addi	s0,sp,32
    8000c3ac:	00050493          	mv	s1,a0
    LOCK();
    8000c3b0:	00100613          	li	a2,1
    8000c3b4:	00000593          	li	a1,0
    8000c3b8:	00002517          	auipc	a0,0x2
    8000c3bc:	d0050513          	addi	a0,a0,-768 # 8000e0b8 <lockPrint>
    8000c3c0:	00000097          	auipc	ra,0x0
    8000c3c4:	c40080e7          	jalr	-960(ra) # 8000c000 <copy_and_swap>
    8000c3c8:	fe0514e3          	bnez	a0,8000c3b0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000c3cc:	0004c503          	lbu	a0,0(s1)
    8000c3d0:	00050a63          	beqz	a0,8000c3e4 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    8000c3d4:	00000097          	auipc	ra,0x0
    8000c3d8:	f4c080e7          	jalr	-180(ra) # 8000c320 <_Z4putcc>
        string++;
    8000c3dc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000c3e0:	fedff06f          	j	8000c3cc <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    8000c3e4:	00000613          	li	a2,0
    8000c3e8:	00100593          	li	a1,1
    8000c3ec:	00002517          	auipc	a0,0x2
    8000c3f0:	ccc50513          	addi	a0,a0,-820 # 8000e0b8 <lockPrint>
    8000c3f4:	00000097          	auipc	ra,0x0
    8000c3f8:	c0c080e7          	jalr	-1012(ra) # 8000c000 <copy_and_swap>
    8000c3fc:	fe0514e3          	bnez	a0,8000c3e4 <_Z11printStringPKc+0x4c>
}
    8000c400:	01813083          	ld	ra,24(sp)
    8000c404:	01013403          	ld	s0,16(sp)
    8000c408:	00813483          	ld	s1,8(sp)
    8000c40c:	02010113          	addi	sp,sp,32
    8000c410:	00008067          	ret

000000008000c414 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    8000c414:	fd010113          	addi	sp,sp,-48
    8000c418:	02113423          	sd	ra,40(sp)
    8000c41c:	02813023          	sd	s0,32(sp)
    8000c420:	00913c23          	sd	s1,24(sp)
    8000c424:	01213823          	sd	s2,16(sp)
    8000c428:	01313423          	sd	s3,8(sp)
    8000c42c:	01413023          	sd	s4,0(sp)
    8000c430:	03010413          	addi	s0,sp,48
    8000c434:	00050993          	mv	s3,a0
    8000c438:	00058a13          	mv	s4,a1
    LOCK();
    8000c43c:	00100613          	li	a2,1
    8000c440:	00000593          	li	a1,0
    8000c444:	00002517          	auipc	a0,0x2
    8000c448:	c7450513          	addi	a0,a0,-908 # 8000e0b8 <lockPrint>
    8000c44c:	00000097          	auipc	ra,0x0
    8000c450:	bb4080e7          	jalr	-1100(ra) # 8000c000 <copy_and_swap>
    8000c454:	fe0514e3          	bnez	a0,8000c43c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    8000c458:	00000913          	li	s2,0
    8000c45c:	00090493          	mv	s1,s2
    8000c460:	0019091b          	addiw	s2,s2,1
    8000c464:	03495a63          	bge	s2,s4,8000c498 <_Z9getStringPci+0x84>
        cc = getc();
    8000c468:	00000097          	auipc	ra,0x0
    8000c46c:	e90080e7          	jalr	-368(ra) # 8000c2f8 <_Z4getcv>
        if(cc < 1)
    8000c470:	02050463          	beqz	a0,8000c498 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    8000c474:	009984b3          	add	s1,s3,s1
    8000c478:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000c47c:	00a00793          	li	a5,10
    8000c480:	00f50a63          	beq	a0,a5,8000c494 <_Z9getStringPci+0x80>
    8000c484:	00d00793          	li	a5,13
    8000c488:	fcf51ae3          	bne	a0,a5,8000c45c <_Z9getStringPci+0x48>
        buf[i++] = c;
    8000c48c:	00090493          	mv	s1,s2
    8000c490:	0080006f          	j	8000c498 <_Z9getStringPci+0x84>
    8000c494:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    8000c498:	009984b3          	add	s1,s3,s1
    8000c49c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000c4a0:	00000613          	li	a2,0
    8000c4a4:	00100593          	li	a1,1
    8000c4a8:	00002517          	auipc	a0,0x2
    8000c4ac:	c1050513          	addi	a0,a0,-1008 # 8000e0b8 <lockPrint>
    8000c4b0:	00000097          	auipc	ra,0x0
    8000c4b4:	b50080e7          	jalr	-1200(ra) # 8000c000 <copy_and_swap>
    8000c4b8:	fe0514e3          	bnez	a0,8000c4a0 <_Z9getStringPci+0x8c>
    return buf;
}
    8000c4bc:	00098513          	mv	a0,s3
    8000c4c0:	02813083          	ld	ra,40(sp)
    8000c4c4:	02013403          	ld	s0,32(sp)
    8000c4c8:	01813483          	ld	s1,24(sp)
    8000c4cc:	01013903          	ld	s2,16(sp)
    8000c4d0:	00813983          	ld	s3,8(sp)
    8000c4d4:	00013a03          	ld	s4,0(sp)
    8000c4d8:	03010113          	addi	sp,sp,48
    8000c4dc:	00008067          	ret

000000008000c4e0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000c4e0:	ff010113          	addi	sp,sp,-16
    8000c4e4:	00813423          	sd	s0,8(sp)
    8000c4e8:	01010413          	addi	s0,sp,16
    8000c4ec:	00050693          	mv	a3,a0
    int n;

    n = 0;
    8000c4f0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000c4f4:	0006c603          	lbu	a2,0(a3)
    8000c4f8:	fd06071b          	addiw	a4,a2,-48
    8000c4fc:	0ff77713          	andi	a4,a4,255
    8000c500:	00900793          	li	a5,9
    8000c504:	02e7e063          	bltu	a5,a4,8000c524 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    8000c508:	0025179b          	slliw	a5,a0,0x2
    8000c50c:	00a787bb          	addw	a5,a5,a0
    8000c510:	0017979b          	slliw	a5,a5,0x1
    8000c514:	00168693          	addi	a3,a3,1
    8000c518:	00c787bb          	addw	a5,a5,a2
    8000c51c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000c520:	fd5ff06f          	j	8000c4f4 <_Z11stringToIntPKc+0x14>
    return n;
}
    8000c524:	00813403          	ld	s0,8(sp)
    8000c528:	01010113          	addi	sp,sp,16
    8000c52c:	00008067          	ret

000000008000c530 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000c530:	fc010113          	addi	sp,sp,-64
    8000c534:	02113c23          	sd	ra,56(sp)
    8000c538:	02813823          	sd	s0,48(sp)
    8000c53c:	02913423          	sd	s1,40(sp)
    8000c540:	03213023          	sd	s2,32(sp)
    8000c544:	01313c23          	sd	s3,24(sp)
    8000c548:	04010413          	addi	s0,sp,64
    8000c54c:	00050493          	mv	s1,a0
    8000c550:	00058913          	mv	s2,a1
    8000c554:	00060993          	mv	s3,a2
    LOCK();
    8000c558:	00100613          	li	a2,1
    8000c55c:	00000593          	li	a1,0
    8000c560:	00002517          	auipc	a0,0x2
    8000c564:	b5850513          	addi	a0,a0,-1192 # 8000e0b8 <lockPrint>
    8000c568:	00000097          	auipc	ra,0x0
    8000c56c:	a98080e7          	jalr	-1384(ra) # 8000c000 <copy_and_swap>
    8000c570:	fe0514e3          	bnez	a0,8000c558 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000c574:	00098463          	beqz	s3,8000c57c <_Z8printIntiii+0x4c>
    8000c578:	0804c463          	bltz	s1,8000c600 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000c57c:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000c580:	00000593          	li	a1,0
    }

    i = 0;
    8000c584:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    8000c588:	0009079b          	sext.w	a5,s2
    8000c58c:	0325773b          	remuw	a4,a0,s2
    8000c590:	00048613          	mv	a2,s1
    8000c594:	0014849b          	addiw	s1,s1,1
    8000c598:	02071693          	slli	a3,a4,0x20
    8000c59c:	0206d693          	srli	a3,a3,0x20
    8000c5a0:	00002717          	auipc	a4,0x2
    8000c5a4:	a8870713          	addi	a4,a4,-1400 # 8000e028 <digits>
    8000c5a8:	00d70733          	add	a4,a4,a3
    8000c5ac:	00074683          	lbu	a3,0(a4)
    8000c5b0:	fd040713          	addi	a4,s0,-48
    8000c5b4:	00c70733          	add	a4,a4,a2
    8000c5b8:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8000c5bc:	0005071b          	sext.w	a4,a0
    8000c5c0:	0325553b          	divuw	a0,a0,s2
    8000c5c4:	fcf772e3          	bgeu	a4,a5,8000c588 <_Z8printIntiii+0x58>
    if(neg)
    8000c5c8:	00058c63          	beqz	a1,8000c5e0 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    8000c5cc:	fd040793          	addi	a5,s0,-48
    8000c5d0:	009784b3          	add	s1,a5,s1
    8000c5d4:	02d00793          	li	a5,45
    8000c5d8:	fef48823          	sb	a5,-16(s1)
    8000c5dc:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000c5e0:	fff4849b          	addiw	s1,s1,-1
    8000c5e4:	0204c463          	bltz	s1,8000c60c <_Z8printIntiii+0xdc>
        putc(buf[i]);
    8000c5e8:	fd040793          	addi	a5,s0,-48
    8000c5ec:	009787b3          	add	a5,a5,s1
    8000c5f0:	ff07c503          	lbu	a0,-16(a5)
    8000c5f4:	00000097          	auipc	ra,0x0
    8000c5f8:	d2c080e7          	jalr	-724(ra) # 8000c320 <_Z4putcc>
    8000c5fc:	fe5ff06f          	j	8000c5e0 <_Z8printIntiii+0xb0>
        x = -xx;
    8000c600:	4090053b          	negw	a0,s1
        neg = 1;
    8000c604:	00100593          	li	a1,1
        x = -xx;
    8000c608:	f7dff06f          	j	8000c584 <_Z8printIntiii+0x54>

    UNLOCK();
    8000c60c:	00000613          	li	a2,0
    8000c610:	00100593          	li	a1,1
    8000c614:	00002517          	auipc	a0,0x2
    8000c618:	aa450513          	addi	a0,a0,-1372 # 8000e0b8 <lockPrint>
    8000c61c:	00000097          	auipc	ra,0x0
    8000c620:	9e4080e7          	jalr	-1564(ra) # 8000c000 <copy_and_swap>
    8000c624:	fe0514e3          	bnez	a0,8000c60c <_Z8printIntiii+0xdc>
}
    8000c628:	03813083          	ld	ra,56(sp)
    8000c62c:	03013403          	ld	s0,48(sp)
    8000c630:	02813483          	ld	s1,40(sp)
    8000c634:	02013903          	ld	s2,32(sp)
    8000c638:	01813983          	ld	s3,24(sp)
    8000c63c:	04010113          	addi	sp,sp,64
    8000c640:	00008067          	ret

000000008000c644 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000c644:	fd010113          	addi	sp,sp,-48
    8000c648:	02113423          	sd	ra,40(sp)
    8000c64c:	02813023          	sd	s0,32(sp)
    8000c650:	00913c23          	sd	s1,24(sp)
    8000c654:	01213823          	sd	s2,16(sp)
    8000c658:	01313423          	sd	s3,8(sp)
    8000c65c:	03010413          	addi	s0,sp,48
    8000c660:	00050493          	mv	s1,a0
    8000c664:	00058993          	mv	s3,a1
    8000c668:	0015879b          	addiw	a5,a1,1
    8000c66c:	0007851b          	sext.w	a0,a5
    8000c670:	00f4a023          	sw	a5,0(s1)
    8000c674:	0004a823          	sw	zero,16(s1)
    8000c678:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000c67c:	00251513          	slli	a0,a0,0x2
    8000c680:	00000097          	auipc	ra,0x0
    8000c684:	9a0080e7          	jalr	-1632(ra) # 8000c020 <_Z9mem_allocm>
    8000c688:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8000c68c:	01000513          	li	a0,16
    8000c690:	00001097          	auipc	ra,0x1
    8000c694:	8dc080e7          	jalr	-1828(ra) # 8000cf6c <_Znwm>
    8000c698:	00050913          	mv	s2,a0
    8000c69c:	00050863          	beqz	a0,8000c6ac <_ZN9BufferCPPC1Ei+0x68>
    8000c6a0:	00000593          	li	a1,0
    8000c6a4:	00001097          	auipc	ra,0x1
    8000c6a8:	b1c080e7          	jalr	-1252(ra) # 8000d1c0 <_ZN9SemaphoreC1Ej>
    8000c6ac:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(_cap);
    8000c6b0:	01000513          	li	a0,16
    8000c6b4:	00001097          	auipc	ra,0x1
    8000c6b8:	8b8080e7          	jalr	-1864(ra) # 8000cf6c <_Znwm>
    8000c6bc:	00050913          	mv	s2,a0
    8000c6c0:	00050863          	beqz	a0,8000c6d0 <_ZN9BufferCPPC1Ei+0x8c>
    8000c6c4:	00098593          	mv	a1,s3
    8000c6c8:	00001097          	auipc	ra,0x1
    8000c6cc:	af8080e7          	jalr	-1288(ra) # 8000d1c0 <_ZN9SemaphoreC1Ej>
    8000c6d0:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    8000c6d4:	01000513          	li	a0,16
    8000c6d8:	00001097          	auipc	ra,0x1
    8000c6dc:	894080e7          	jalr	-1900(ra) # 8000cf6c <_Znwm>
    8000c6e0:	00050913          	mv	s2,a0
    8000c6e4:	00050863          	beqz	a0,8000c6f4 <_ZN9BufferCPPC1Ei+0xb0>
    8000c6e8:	00100593          	li	a1,1
    8000c6ec:	00001097          	auipc	ra,0x1
    8000c6f0:	ad4080e7          	jalr	-1324(ra) # 8000d1c0 <_ZN9SemaphoreC1Ej>
    8000c6f4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    8000c6f8:	01000513          	li	a0,16
    8000c6fc:	00001097          	auipc	ra,0x1
    8000c700:	870080e7          	jalr	-1936(ra) # 8000cf6c <_Znwm>
    8000c704:	00050913          	mv	s2,a0
    8000c708:	00050863          	beqz	a0,8000c718 <_ZN9BufferCPPC1Ei+0xd4>
    8000c70c:	00100593          	li	a1,1
    8000c710:	00001097          	auipc	ra,0x1
    8000c714:	ab0080e7          	jalr	-1360(ra) # 8000d1c0 <_ZN9SemaphoreC1Ej>
    8000c718:	0324b823          	sd	s2,48(s1)
}
    8000c71c:	02813083          	ld	ra,40(sp)
    8000c720:	02013403          	ld	s0,32(sp)
    8000c724:	01813483          	ld	s1,24(sp)
    8000c728:	01013903          	ld	s2,16(sp)
    8000c72c:	00813983          	ld	s3,8(sp)
    8000c730:	03010113          	addi	sp,sp,48
    8000c734:	00008067          	ret
    8000c738:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8000c73c:	00090513          	mv	a0,s2
    8000c740:	00001097          	auipc	ra,0x1
    8000c744:	854080e7          	jalr	-1964(ra) # 8000cf94 <_ZdlPv>
    8000c748:	00048513          	mv	a0,s1
    8000c74c:	ffffd097          	auipc	ra,0xffffd
    8000c750:	46c080e7          	jalr	1132(ra) # 80009bb8 <_Unwind_Resume>
    8000c754:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    8000c758:	00090513          	mv	a0,s2
    8000c75c:	00001097          	auipc	ra,0x1
    8000c760:	838080e7          	jalr	-1992(ra) # 8000cf94 <_ZdlPv>
    8000c764:	00048513          	mv	a0,s1
    8000c768:	ffffd097          	auipc	ra,0xffffd
    8000c76c:	450080e7          	jalr	1104(ra) # 80009bb8 <_Unwind_Resume>
    8000c770:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    8000c774:	00090513          	mv	a0,s2
    8000c778:	00001097          	auipc	ra,0x1
    8000c77c:	81c080e7          	jalr	-2020(ra) # 8000cf94 <_ZdlPv>
    8000c780:	00048513          	mv	a0,s1
    8000c784:	ffffd097          	auipc	ra,0xffffd
    8000c788:	434080e7          	jalr	1076(ra) # 80009bb8 <_Unwind_Resume>
    8000c78c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000c790:	00090513          	mv	a0,s2
    8000c794:	00001097          	auipc	ra,0x1
    8000c798:	800080e7          	jalr	-2048(ra) # 8000cf94 <_ZdlPv>
    8000c79c:	00048513          	mv	a0,s1
    8000c7a0:	ffffd097          	auipc	ra,0xffffd
    8000c7a4:	418080e7          	jalr	1048(ra) # 80009bb8 <_Unwind_Resume>

000000008000c7a8 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    8000c7a8:	fe010113          	addi	sp,sp,-32
    8000c7ac:	00113c23          	sd	ra,24(sp)
    8000c7b0:	00813823          	sd	s0,16(sp)
    8000c7b4:	00913423          	sd	s1,8(sp)
    8000c7b8:	01213023          	sd	s2,0(sp)
    8000c7bc:	02010413          	addi	s0,sp,32
    8000c7c0:	00050493          	mv	s1,a0
    8000c7c4:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    8000c7c8:	01853503          	ld	a0,24(a0)
    8000c7cc:	00001097          	auipc	ra,0x1
    8000c7d0:	9bc080e7          	jalr	-1604(ra) # 8000d188 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    8000c7d4:	0304b503          	ld	a0,48(s1)
    8000c7d8:	00001097          	auipc	ra,0x1
    8000c7dc:	9b0080e7          	jalr	-1616(ra) # 8000d188 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000c7e0:	0084b783          	ld	a5,8(s1)
    8000c7e4:	0144a703          	lw	a4,20(s1)
    8000c7e8:	00271713          	slli	a4,a4,0x2
    8000c7ec:	00e787b3          	add	a5,a5,a4
    8000c7f0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000c7f4:	0144a783          	lw	a5,20(s1)
    8000c7f8:	0017879b          	addiw	a5,a5,1
    8000c7fc:	0004a703          	lw	a4,0(s1)
    8000c800:	02e7e7bb          	remw	a5,a5,a4
    8000c804:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    8000c808:	0304b503          	ld	a0,48(s1)
    8000c80c:	00001097          	auipc	ra,0x1
    8000c810:	a00080e7          	jalr	-1536(ra) # 8000d20c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    8000c814:	0204b503          	ld	a0,32(s1)
    8000c818:	00001097          	auipc	ra,0x1
    8000c81c:	9f4080e7          	jalr	-1548(ra) # 8000d20c <_ZN9Semaphore6signalEv>

}
    8000c820:	01813083          	ld	ra,24(sp)
    8000c824:	01013403          	ld	s0,16(sp)
    8000c828:	00813483          	ld	s1,8(sp)
    8000c82c:	00013903          	ld	s2,0(sp)
    8000c830:	02010113          	addi	sp,sp,32
    8000c834:	00008067          	ret

000000008000c838 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    8000c838:	fe010113          	addi	sp,sp,-32
    8000c83c:	00113c23          	sd	ra,24(sp)
    8000c840:	00813823          	sd	s0,16(sp)
    8000c844:	00913423          	sd	s1,8(sp)
    8000c848:	01213023          	sd	s2,0(sp)
    8000c84c:	02010413          	addi	s0,sp,32
    8000c850:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000c854:	02053503          	ld	a0,32(a0)
    8000c858:	00001097          	auipc	ra,0x1
    8000c85c:	930080e7          	jalr	-1744(ra) # 8000d188 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000c860:	0284b503          	ld	a0,40(s1)
    8000c864:	00001097          	auipc	ra,0x1
    8000c868:	924080e7          	jalr	-1756(ra) # 8000d188 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000c86c:	0084b703          	ld	a4,8(s1)
    8000c870:	0104a783          	lw	a5,16(s1)
    8000c874:	00279693          	slli	a3,a5,0x2
    8000c878:	00d70733          	add	a4,a4,a3
    8000c87c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000c880:	0017879b          	addiw	a5,a5,1
    8000c884:	0004a703          	lw	a4,0(s1)
    8000c888:	02e7e7bb          	remw	a5,a5,a4
    8000c88c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000c890:	0284b503          	ld	a0,40(s1)
    8000c894:	00001097          	auipc	ra,0x1
    8000c898:	978080e7          	jalr	-1672(ra) # 8000d20c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    8000c89c:	0184b503          	ld	a0,24(s1)
    8000c8a0:	00001097          	auipc	ra,0x1
    8000c8a4:	96c080e7          	jalr	-1684(ra) # 8000d20c <_ZN9Semaphore6signalEv>

    return ret;
}
    8000c8a8:	00090513          	mv	a0,s2
    8000c8ac:	01813083          	ld	ra,24(sp)
    8000c8b0:	01013403          	ld	s0,16(sp)
    8000c8b4:	00813483          	ld	s1,8(sp)
    8000c8b8:	00013903          	ld	s2,0(sp)
    8000c8bc:	02010113          	addi	sp,sp,32
    8000c8c0:	00008067          	ret

000000008000c8c4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    8000c8c4:	fe010113          	addi	sp,sp,-32
    8000c8c8:	00113c23          	sd	ra,24(sp)
    8000c8cc:	00813823          	sd	s0,16(sp)
    8000c8d0:	00913423          	sd	s1,8(sp)
    8000c8d4:	01213023          	sd	s2,0(sp)
    8000c8d8:	02010413          	addi	s0,sp,32
    8000c8dc:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000c8e0:	02853503          	ld	a0,40(a0)
    8000c8e4:	00001097          	auipc	ra,0x1
    8000c8e8:	8a4080e7          	jalr	-1884(ra) # 8000d188 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    8000c8ec:	0304b503          	ld	a0,48(s1)
    8000c8f0:	00001097          	auipc	ra,0x1
    8000c8f4:	898080e7          	jalr	-1896(ra) # 8000d188 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    8000c8f8:	0144a783          	lw	a5,20(s1)
    8000c8fc:	0104a903          	lw	s2,16(s1)
    8000c900:	0327ce63          	blt	a5,s2,8000c93c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    8000c904:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    8000c908:	0304b503          	ld	a0,48(s1)
    8000c90c:	00001097          	auipc	ra,0x1
    8000c910:	900080e7          	jalr	-1792(ra) # 8000d20c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    8000c914:	0284b503          	ld	a0,40(s1)
    8000c918:	00001097          	auipc	ra,0x1
    8000c91c:	8f4080e7          	jalr	-1804(ra) # 8000d20c <_ZN9Semaphore6signalEv>

    return ret;
}
    8000c920:	00090513          	mv	a0,s2
    8000c924:	01813083          	ld	ra,24(sp)
    8000c928:	01013403          	ld	s0,16(sp)
    8000c92c:	00813483          	ld	s1,8(sp)
    8000c930:	00013903          	ld	s2,0(sp)
    8000c934:	02010113          	addi	sp,sp,32
    8000c938:	00008067          	ret
        ret = cap - head + tail;
    8000c93c:	0004a703          	lw	a4,0(s1)
    8000c940:	4127093b          	subw	s2,a4,s2
    8000c944:	00f9093b          	addw	s2,s2,a5
    8000c948:	fc1ff06f          	j	8000c908 <_ZN9BufferCPP6getCntEv+0x44>

000000008000c94c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8000c94c:	fe010113          	addi	sp,sp,-32
    8000c950:	00113c23          	sd	ra,24(sp)
    8000c954:	00813823          	sd	s0,16(sp)
    8000c958:	00913423          	sd	s1,8(sp)
    8000c95c:	02010413          	addi	s0,sp,32
    8000c960:	00050493          	mv	s1,a0
    Console::putc('\n');
    8000c964:	00a00513          	li	a0,10
    8000c968:	00001097          	auipc	ra,0x1
    8000c96c:	904080e7          	jalr	-1788(ra) # 8000d26c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000c970:	00001517          	auipc	a0,0x1
    8000c974:	69050513          	addi	a0,a0,1680 # 8000e000 <userDataStart>
    8000c978:	00000097          	auipc	ra,0x0
    8000c97c:	a20080e7          	jalr	-1504(ra) # 8000c398 <_Z11printStringPKc>
    while (getCnt()) {
    8000c980:	00048513          	mv	a0,s1
    8000c984:	00000097          	auipc	ra,0x0
    8000c988:	f40080e7          	jalr	-192(ra) # 8000c8c4 <_ZN9BufferCPP6getCntEv>
    8000c98c:	02050c63          	beqz	a0,8000c9c4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000c990:	0084b783          	ld	a5,8(s1)
    8000c994:	0104a703          	lw	a4,16(s1)
    8000c998:	00271713          	slli	a4,a4,0x2
    8000c99c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000c9a0:	0007c503          	lbu	a0,0(a5)
    8000c9a4:	00001097          	auipc	ra,0x1
    8000c9a8:	8c8080e7          	jalr	-1848(ra) # 8000d26c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    8000c9ac:	0104a783          	lw	a5,16(s1)
    8000c9b0:	0017879b          	addiw	a5,a5,1
    8000c9b4:	0004a703          	lw	a4,0(s1)
    8000c9b8:	02e7e7bb          	remw	a5,a5,a4
    8000c9bc:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000c9c0:	fc1ff06f          	j	8000c980 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    8000c9c4:	02100513          	li	a0,33
    8000c9c8:	00001097          	auipc	ra,0x1
    8000c9cc:	8a4080e7          	jalr	-1884(ra) # 8000d26c <_ZN7Console4putcEc>
    Console::putc('\n');
    8000c9d0:	00a00513          	li	a0,10
    8000c9d4:	00001097          	auipc	ra,0x1
    8000c9d8:	898080e7          	jalr	-1896(ra) # 8000d26c <_ZN7Console4putcEc>
    mem_free(buffer);
    8000c9dc:	0084b503          	ld	a0,8(s1)
    8000c9e0:	fffff097          	auipc	ra,0xfffff
    8000c9e4:	670080e7          	jalr	1648(ra) # 8000c050 <_Z8mem_freePv>
    delete itemAvailable;
    8000c9e8:	0204b503          	ld	a0,32(s1)
    8000c9ec:	00050863          	beqz	a0,8000c9fc <_ZN9BufferCPPD1Ev+0xb0>
    8000c9f0:	00053783          	ld	a5,0(a0)
    8000c9f4:	0087b783          	ld	a5,8(a5)
    8000c9f8:	000780e7          	jalr	a5
    delete spaceAvailable;
    8000c9fc:	0184b503          	ld	a0,24(s1)
    8000ca00:	00050863          	beqz	a0,8000ca10 <_ZN9BufferCPPD1Ev+0xc4>
    8000ca04:	00053783          	ld	a5,0(a0)
    8000ca08:	0087b783          	ld	a5,8(a5)
    8000ca0c:	000780e7          	jalr	a5
    delete mutexTail;
    8000ca10:	0304b503          	ld	a0,48(s1)
    8000ca14:	00050863          	beqz	a0,8000ca24 <_ZN9BufferCPPD1Ev+0xd8>
    8000ca18:	00053783          	ld	a5,0(a0)
    8000ca1c:	0087b783          	ld	a5,8(a5)
    8000ca20:	000780e7          	jalr	a5
    delete mutexHead;
    8000ca24:	0284b503          	ld	a0,40(s1)
    8000ca28:	00050863          	beqz	a0,8000ca38 <_ZN9BufferCPPD1Ev+0xec>
    8000ca2c:	00053783          	ld	a5,0(a0)
    8000ca30:	0087b783          	ld	a5,8(a5)
    8000ca34:	000780e7          	jalr	a5
}
    8000ca38:	01813083          	ld	ra,24(sp)
    8000ca3c:	01013403          	ld	s0,16(sp)
    8000ca40:	00813483          	ld	s1,8(sp)
    8000ca44:	02010113          	addi	sp,sp,32
    8000ca48:	00008067          	ret

000000008000ca4c <_Z9sleepyRunPv>:
#include "../../../h/syscall_c_kernel.hpp"
#include "printing.hpp"

bool finished[2];

void sleepyRun(void *arg) {
    8000ca4c:	fe010113          	addi	sp,sp,-32
    8000ca50:	00113c23          	sd	ra,24(sp)
    8000ca54:	00813823          	sd	s0,16(sp)
    8000ca58:	00913423          	sd	s1,8(sp)
    8000ca5c:	01213023          	sd	s2,0(sp)
    8000ca60:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    8000ca64:	00053903          	ld	s2,0(a0)
    int i = 6;
    8000ca68:	00600493          	li	s1,6
    while (--i > 0) {
    8000ca6c:	fff4849b          	addiw	s1,s1,-1
    8000ca70:	04905463          	blez	s1,8000cab8 <_Z9sleepyRunPv+0x6c>

        printString("Hello ");
    8000ca74:	00001517          	auipc	a0,0x1
    8000ca78:	5a450513          	addi	a0,a0,1444 # 8000e018 <userDataStart+0x18>
    8000ca7c:	00000097          	auipc	ra,0x0
    8000ca80:	91c080e7          	jalr	-1764(ra) # 8000c398 <_Z11printStringPKc>
        printInt(sleep_time);
    8000ca84:	00000613          	li	a2,0
    8000ca88:	00a00593          	li	a1,10
    8000ca8c:	0009051b          	sext.w	a0,s2
    8000ca90:	00000097          	auipc	ra,0x0
    8000ca94:	aa0080e7          	jalr	-1376(ra) # 8000c530 <_Z8printIntiii>
        printString(" !\n");
    8000ca98:	00001517          	auipc	a0,0x1
    8000ca9c:	58850513          	addi	a0,a0,1416 # 8000e020 <userDataStart+0x20>
    8000caa0:	00000097          	auipc	ra,0x0
    8000caa4:	8f8080e7          	jalr	-1800(ra) # 8000c398 <_Z11printStringPKc>
        time_sleep(sleep_time);
    8000caa8:	00090513          	mv	a0,s2
    8000caac:	fffff097          	auipc	ra,0xfffff
    8000cab0:	764080e7          	jalr	1892(ra) # 8000c210 <_Z10time_sleepm>
    while (--i > 0) {
    8000cab4:	fb9ff06f          	j	8000ca6c <_Z9sleepyRunPv+0x20>
//        {
//            thread_dispatch_kernel();
//            *((size_t*)HEAP_START_ADDR) = 4;
//        }
    }
    finished[sleep_time/10-1] = true;
    8000cab8:	00a00793          	li	a5,10
    8000cabc:	02f95933          	divu	s2,s2,a5
    8000cac0:	fff90913          	addi	s2,s2,-1
    8000cac4:	00001797          	auipc	a5,0x1
    8000cac8:	5fc78793          	addi	a5,a5,1532 # 8000e0c0 <finished>
    8000cacc:	01278933          	add	s2,a5,s2
    8000cad0:	00100793          	li	a5,1
    8000cad4:	00f90023          	sb	a5,0(s2)
}
    8000cad8:	01813083          	ld	ra,24(sp)
    8000cadc:	01013403          	ld	s0,16(sp)
    8000cae0:	00813483          	ld	s1,8(sp)
    8000cae4:	00013903          	ld	s2,0(sp)
    8000cae8:	02010113          	addi	sp,sp,32
    8000caec:	00008067          	ret

000000008000caf0 <_Z12testSleepingv>:

void testSleeping() {
    8000caf0:	fc010113          	addi	sp,sp,-64
    8000caf4:	02113c23          	sd	ra,56(sp)
    8000caf8:	02813823          	sd	s0,48(sp)
    8000cafc:	02913423          	sd	s1,40(sp)
    8000cb00:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    8000cb04:	00a00793          	li	a5,10
    8000cb08:	fcf43823          	sd	a5,-48(s0)
    8000cb0c:	01400793          	li	a5,20
    8000cb10:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    8000cb14:	00000493          	li	s1,0
    8000cb18:	02c0006f          	j	8000cb44 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    8000cb1c:	00349793          	slli	a5,s1,0x3
    8000cb20:	fd040613          	addi	a2,s0,-48
    8000cb24:	00f60633          	add	a2,a2,a5
    8000cb28:	00000597          	auipc	a1,0x0
    8000cb2c:	f2458593          	addi	a1,a1,-220 # 8000ca4c <_Z9sleepyRunPv>
    8000cb30:	fc040513          	addi	a0,s0,-64
    8000cb34:	00f50533          	add	a0,a0,a5
    8000cb38:	fffff097          	auipc	ra,0xfffff
    8000cb3c:	544080e7          	jalr	1348(ra) # 8000c07c <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    8000cb40:	0014849b          	addiw	s1,s1,1
    8000cb44:	00100793          	li	a5,1
    8000cb48:	fc97dae3          	bge	a5,s1,8000cb1c <_Z12testSleepingv+0x2c>
    }

//    int count = 0;
    while (!(finished[0] && finished[1])) {
    8000cb4c:	00001797          	auipc	a5,0x1
    8000cb50:	5747c783          	lbu	a5,1396(a5) # 8000e0c0 <finished>
    8000cb54:	fe078ce3          	beqz	a5,8000cb4c <_Z12testSleepingv+0x5c>
    8000cb58:	00001797          	auipc	a5,0x1
    8000cb5c:	5697c783          	lbu	a5,1385(a5) # 8000e0c1 <finished+0x1>
    8000cb60:	fe0786e3          	beqz	a5,8000cb4c <_Z12testSleepingv+0x5c>
//        if(count == 2000*2000)
//            finished[0] = true;
//        else
//            thread_dispatch();
    }
}
    8000cb64:	03813083          	ld	ra,56(sp)
    8000cb68:	03013403          	ld	s0,48(sp)
    8000cb6c:	02813483          	ld	s1,40(sp)
    8000cb70:	04010113          	addi	sp,sp,64
    8000cb74:	00008067          	ret

000000008000cb78 <_Z8userMainv>:
//#include "ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

//#include "test1OS2.hpp"

void userMain()
{
    8000cb78:	ff010113          	addi	sp,sp,-16
    8000cb7c:	00113423          	sd	ra,8(sp)
    8000cb80:	00813023          	sd	s0,0(sp)
    8000cb84:	01010413          	addi	s0,sp,16
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    testSleeping(); // thread_sleep test C API
    8000cb88:	00000097          	auipc	ra,0x0
    8000cb8c:	f68080e7          	jalr	-152(ra) # 8000caf0 <_Z12testSleepingv>
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    //userMainTest();
    8000cb90:	00813083          	ld	ra,8(sp)
    8000cb94:	00013403          	ld	s0,0(sp)
    8000cb98:	01010113          	addi	sp,sp,16
    8000cb9c:	00008067          	ret

000000008000cba0 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000cba0:	fe010113          	addi	sp,sp,-32
    8000cba4:	00113c23          	sd	ra,24(sp)
    8000cba8:	00813823          	sd	s0,16(sp)
    8000cbac:	00913423          	sd	s1,8(sp)
    8000cbb0:	01213023          	sd	s2,0(sp)
    8000cbb4:	02010413          	addi	s0,sp,32
    8000cbb8:	00050493          	mv	s1,a0
    8000cbbc:	00058913          	mv	s2,a1
    8000cbc0:	0015879b          	addiw	a5,a1,1
    8000cbc4:	0007851b          	sext.w	a0,a5
    8000cbc8:	00f4a023          	sw	a5,0(s1)
    8000cbcc:	0004a823          	sw	zero,16(s1)
    8000cbd0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000cbd4:	00251513          	slli	a0,a0,0x2
    8000cbd8:	fffff097          	auipc	ra,0xfffff
    8000cbdc:	448080e7          	jalr	1096(ra) # 8000c020 <_Z9mem_allocm>
    8000cbe0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    8000cbe4:	00000593          	li	a1,0
    8000cbe8:	02048513          	addi	a0,s1,32
    8000cbec:	fffff097          	auipc	ra,0xfffff
    8000cbf0:	568080e7          	jalr	1384(ra) # 8000c154 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    8000cbf4:	00090593          	mv	a1,s2
    8000cbf8:	01848513          	addi	a0,s1,24
    8000cbfc:	fffff097          	auipc	ra,0xfffff
    8000cc00:	558080e7          	jalr	1368(ra) # 8000c154 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    8000cc04:	00100593          	li	a1,1
    8000cc08:	02848513          	addi	a0,s1,40
    8000cc0c:	fffff097          	auipc	ra,0xfffff
    8000cc10:	548080e7          	jalr	1352(ra) # 8000c154 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    8000cc14:	00100593          	li	a1,1
    8000cc18:	03048513          	addi	a0,s1,48
    8000cc1c:	fffff097          	auipc	ra,0xfffff
    8000cc20:	538080e7          	jalr	1336(ra) # 8000c154 <_Z8sem_openPP4_semj>
}
    8000cc24:	01813083          	ld	ra,24(sp)
    8000cc28:	01013403          	ld	s0,16(sp)
    8000cc2c:	00813483          	ld	s1,8(sp)
    8000cc30:	00013903          	ld	s2,0(sp)
    8000cc34:	02010113          	addi	sp,sp,32
    8000cc38:	00008067          	ret

000000008000cc3c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    8000cc3c:	fe010113          	addi	sp,sp,-32
    8000cc40:	00113c23          	sd	ra,24(sp)
    8000cc44:	00813823          	sd	s0,16(sp)
    8000cc48:	00913423          	sd	s1,8(sp)
    8000cc4c:	01213023          	sd	s2,0(sp)
    8000cc50:	02010413          	addi	s0,sp,32
    8000cc54:	00050493          	mv	s1,a0
    8000cc58:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000cc5c:	01853503          	ld	a0,24(a0)
    8000cc60:	fffff097          	auipc	ra,0xfffff
    8000cc64:	558080e7          	jalr	1368(ra) # 8000c1b8 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    8000cc68:	0304b503          	ld	a0,48(s1)
    8000cc6c:	fffff097          	auipc	ra,0xfffff
    8000cc70:	54c080e7          	jalr	1356(ra) # 8000c1b8 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    8000cc74:	0084b783          	ld	a5,8(s1)
    8000cc78:	0144a703          	lw	a4,20(s1)
    8000cc7c:	00271713          	slli	a4,a4,0x2
    8000cc80:	00e787b3          	add	a5,a5,a4
    8000cc84:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000cc88:	0144a783          	lw	a5,20(s1)
    8000cc8c:	0017879b          	addiw	a5,a5,1
    8000cc90:	0004a703          	lw	a4,0(s1)
    8000cc94:	02e7e7bb          	remw	a5,a5,a4
    8000cc98:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000cc9c:	0304b503          	ld	a0,48(s1)
    8000cca0:	fffff097          	auipc	ra,0xfffff
    8000cca4:	544080e7          	jalr	1348(ra) # 8000c1e4 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    8000cca8:	0204b503          	ld	a0,32(s1)
    8000ccac:	fffff097          	auipc	ra,0xfffff
    8000ccb0:	538080e7          	jalr	1336(ra) # 8000c1e4 <_Z10sem_signalP4_sem>

}
    8000ccb4:	01813083          	ld	ra,24(sp)
    8000ccb8:	01013403          	ld	s0,16(sp)
    8000ccbc:	00813483          	ld	s1,8(sp)
    8000ccc0:	00013903          	ld	s2,0(sp)
    8000ccc4:	02010113          	addi	sp,sp,32
    8000ccc8:	00008067          	ret

000000008000cccc <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000cccc:	fe010113          	addi	sp,sp,-32
    8000ccd0:	00113c23          	sd	ra,24(sp)
    8000ccd4:	00813823          	sd	s0,16(sp)
    8000ccd8:	00913423          	sd	s1,8(sp)
    8000ccdc:	01213023          	sd	s2,0(sp)
    8000cce0:	02010413          	addi	s0,sp,32
    8000cce4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000cce8:	02053503          	ld	a0,32(a0)
    8000ccec:	fffff097          	auipc	ra,0xfffff
    8000ccf0:	4cc080e7          	jalr	1228(ra) # 8000c1b8 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    8000ccf4:	0284b503          	ld	a0,40(s1)
    8000ccf8:	fffff097          	auipc	ra,0xfffff
    8000ccfc:	4c0080e7          	jalr	1216(ra) # 8000c1b8 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    8000cd00:	0084b703          	ld	a4,8(s1)
    8000cd04:	0104a783          	lw	a5,16(s1)
    8000cd08:	00279693          	slli	a3,a5,0x2
    8000cd0c:	00d70733          	add	a4,a4,a3
    8000cd10:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000cd14:	0017879b          	addiw	a5,a5,1
    8000cd18:	0004a703          	lw	a4,0(s1)
    8000cd1c:	02e7e7bb          	remw	a5,a5,a4
    8000cd20:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000cd24:	0284b503          	ld	a0,40(s1)
    8000cd28:	fffff097          	auipc	ra,0xfffff
    8000cd2c:	4bc080e7          	jalr	1212(ra) # 8000c1e4 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    8000cd30:	0184b503          	ld	a0,24(s1)
    8000cd34:	fffff097          	auipc	ra,0xfffff
    8000cd38:	4b0080e7          	jalr	1200(ra) # 8000c1e4 <_Z10sem_signalP4_sem>

    return ret;
}
    8000cd3c:	00090513          	mv	a0,s2
    8000cd40:	01813083          	ld	ra,24(sp)
    8000cd44:	01013403          	ld	s0,16(sp)
    8000cd48:	00813483          	ld	s1,8(sp)
    8000cd4c:	00013903          	ld	s2,0(sp)
    8000cd50:	02010113          	addi	sp,sp,32
    8000cd54:	00008067          	ret

000000008000cd58 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    8000cd58:	fe010113          	addi	sp,sp,-32
    8000cd5c:	00113c23          	sd	ra,24(sp)
    8000cd60:	00813823          	sd	s0,16(sp)
    8000cd64:	00913423          	sd	s1,8(sp)
    8000cd68:	01213023          	sd	s2,0(sp)
    8000cd6c:	02010413          	addi	s0,sp,32
    8000cd70:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    8000cd74:	02853503          	ld	a0,40(a0)
    8000cd78:	fffff097          	auipc	ra,0xfffff
    8000cd7c:	440080e7          	jalr	1088(ra) # 8000c1b8 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    8000cd80:	0304b503          	ld	a0,48(s1)
    8000cd84:	fffff097          	auipc	ra,0xfffff
    8000cd88:	434080e7          	jalr	1076(ra) # 8000c1b8 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    8000cd8c:	0144a783          	lw	a5,20(s1)
    8000cd90:	0104a903          	lw	s2,16(s1)
    8000cd94:	0327ce63          	blt	a5,s2,8000cdd0 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000cd98:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    8000cd9c:	0304b503          	ld	a0,48(s1)
    8000cda0:	fffff097          	auipc	ra,0xfffff
    8000cda4:	444080e7          	jalr	1092(ra) # 8000c1e4 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    8000cda8:	0284b503          	ld	a0,40(s1)
    8000cdac:	fffff097          	auipc	ra,0xfffff
    8000cdb0:	438080e7          	jalr	1080(ra) # 8000c1e4 <_Z10sem_signalP4_sem>

    return ret;
    8000cdb4:	00090513          	mv	a0,s2
    8000cdb8:	01813083          	ld	ra,24(sp)
    8000cdbc:	01013403          	ld	s0,16(sp)
    8000cdc0:	00813483          	ld	s1,8(sp)
    8000cdc4:	00013903          	ld	s2,0(sp)
    8000cdc8:	02010113          	addi	sp,sp,32
    8000cdcc:	00008067          	ret
        ret = cap - head + tail;
    8000cdd0:	0004a703          	lw	a4,0(s1)
    8000cdd4:	4127093b          	subw	s2,a4,s2
    8000cdd8:	00f9093b          	addw	s2,s2,a5
    8000cddc:	fc1ff06f          	j	8000cd9c <_ZN6Buffer6getCntEv+0x44>

000000008000cde0 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8000cde0:	fe010113          	addi	sp,sp,-32
    8000cde4:	00113c23          	sd	ra,24(sp)
    8000cde8:	00813823          	sd	s0,16(sp)
    8000cdec:	00913423          	sd	s1,8(sp)
    8000cdf0:	02010413          	addi	s0,sp,32
    8000cdf4:	00050493          	mv	s1,a0
    putc('\n');
    8000cdf8:	00a00513          	li	a0,10
    8000cdfc:	fffff097          	auipc	ra,0xfffff
    8000ce00:	524080e7          	jalr	1316(ra) # 8000c320 <_Z4putcc>
    printString("Buffer deleted!\n");
    8000ce04:	00001517          	auipc	a0,0x1
    8000ce08:	1fc50513          	addi	a0,a0,508 # 8000e000 <userDataStart>
    8000ce0c:	fffff097          	auipc	ra,0xfffff
    8000ce10:	58c080e7          	jalr	1420(ra) # 8000c398 <_Z11printStringPKc>
    while (getCnt() > 0) {
    8000ce14:	00048513          	mv	a0,s1
    8000ce18:	00000097          	auipc	ra,0x0
    8000ce1c:	f40080e7          	jalr	-192(ra) # 8000cd58 <_ZN6Buffer6getCntEv>
    8000ce20:	02a05c63          	blez	a0,8000ce58 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    8000ce24:	0084b783          	ld	a5,8(s1)
    8000ce28:	0104a703          	lw	a4,16(s1)
    8000ce2c:	00271713          	slli	a4,a4,0x2
    8000ce30:	00e787b3          	add	a5,a5,a4
        putc(ch);
    8000ce34:	0007c503          	lbu	a0,0(a5)
    8000ce38:	fffff097          	auipc	ra,0xfffff
    8000ce3c:	4e8080e7          	jalr	1256(ra) # 8000c320 <_Z4putcc>
        head = (head + 1) % cap;
    8000ce40:	0104a783          	lw	a5,16(s1)
    8000ce44:	0017879b          	addiw	a5,a5,1
    8000ce48:	0004a703          	lw	a4,0(s1)
    8000ce4c:	02e7e7bb          	remw	a5,a5,a4
    8000ce50:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    8000ce54:	fc1ff06f          	j	8000ce14 <_ZN6BufferD1Ev+0x34>
    putc('!');
    8000ce58:	02100513          	li	a0,33
    8000ce5c:	fffff097          	auipc	ra,0xfffff
    8000ce60:	4c4080e7          	jalr	1220(ra) # 8000c320 <_Z4putcc>
    putc('\n');
    8000ce64:	00a00513          	li	a0,10
    8000ce68:	fffff097          	auipc	ra,0xfffff
    8000ce6c:	4b8080e7          	jalr	1208(ra) # 8000c320 <_Z4putcc>
    mem_free(buffer);
    8000ce70:	0084b503          	ld	a0,8(s1)
    8000ce74:	fffff097          	auipc	ra,0xfffff
    8000ce78:	1dc080e7          	jalr	476(ra) # 8000c050 <_Z8mem_freePv>
    sem_close(itemAvailable);
    8000ce7c:	0204b503          	ld	a0,32(s1)
    8000ce80:	fffff097          	auipc	ra,0xfffff
    8000ce84:	30c080e7          	jalr	780(ra) # 8000c18c <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    8000ce88:	0184b503          	ld	a0,24(s1)
    8000ce8c:	fffff097          	auipc	ra,0xfffff
    8000ce90:	300080e7          	jalr	768(ra) # 8000c18c <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    8000ce94:	0304b503          	ld	a0,48(s1)
    8000ce98:	fffff097          	auipc	ra,0xfffff
    8000ce9c:	2f4080e7          	jalr	756(ra) # 8000c18c <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    8000cea0:	0284b503          	ld	a0,40(s1)
    8000cea4:	fffff097          	auipc	ra,0xfffff
    8000cea8:	2e8080e7          	jalr	744(ra) # 8000c18c <_Z9sem_closeP4_sem>
}
    8000ceac:	01813083          	ld	ra,24(sp)
    8000ceb0:	01013403          	ld	s0,16(sp)
    8000ceb4:	00813483          	ld	s1,8(sp)
    8000ceb8:	02010113          	addi	sp,sp,32
    8000cebc:	00008067          	ret

000000008000cec0 <_ZN6Thread6runnerEPv>:
    myHandle = nullptr;
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    8000cec0:	ff010113          	addi	sp,sp,-16
    8000cec4:	00113423          	sd	ra,8(sp)
    8000cec8:	00813023          	sd	s0,0(sp)
    8000cecc:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    8000ced0:	00053783          	ld	a5,0(a0)
    8000ced4:	0107b783          	ld	a5,16(a5)
    8000ced8:	000780e7          	jalr	a5
}
    8000cedc:	00813083          	ld	ra,8(sp)
    8000cee0:	00013403          	ld	s0,0(sp)
    8000cee4:	01010113          	addi	sp,sp,16
    8000cee8:	00008067          	ret

000000008000ceec <_ZN6ThreadD1Ev>:

Thread::~Thread()
    8000ceec:	00001797          	auipc	a5,0x1
    8000cef0:	19478793          	addi	a5,a5,404 # 8000e080 <_ZTV6Thread+0x10>
    8000cef4:	00f53023          	sd	a5,0(a0)
{
    delete myHandle;
    8000cef8:	00853503          	ld	a0,8(a0)
    8000cefc:	02050663          	beqz	a0,8000cf28 <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread()
    8000cf00:	ff010113          	addi	sp,sp,-16
    8000cf04:	00113423          	sd	ra,8(sp)
    8000cf08:	00813023          	sd	s0,0(sp)
    8000cf0c:	01010413          	addi	s0,sp,16
    delete myHandle;
    8000cf10:	fffff097          	auipc	ra,0xfffff
    8000cf14:	460080e7          	jalr	1120(ra) # 8000c370 <_ZN7_threaddlEPv>
}
    8000cf18:	00813083          	ld	ra,8(sp)
    8000cf1c:	00013403          	ld	s0,0(sp)
    8000cf20:	01010113          	addi	sp,sp,16
    8000cf24:	00008067          	ret
    8000cf28:	00008067          	ret

000000008000cf2c <_ZN9SemaphoreD1Ev>:
    if(myHandle == nullptr)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    8000cf2c:	00001797          	auipc	a5,0x1
    8000cf30:	17c78793          	addi	a5,a5,380 # 8000e0a8 <_ZTV9Semaphore+0x10>
    8000cf34:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    8000cf38:	00853503          	ld	a0,8(a0)
    8000cf3c:	02050663          	beqz	a0,8000cf68 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    8000cf40:	ff010113          	addi	sp,sp,-16
    8000cf44:	00113423          	sd	ra,8(sp)
    8000cf48:	00813023          	sd	s0,0(sp)
    8000cf4c:	01010413          	addi	s0,sp,16
    delete myHandle;
    8000cf50:	00000097          	auipc	ra,0x0
    8000cf54:	4c4080e7          	jalr	1220(ra) # 8000d414 <_ZN4_semdlEPv>
}
    8000cf58:	00813083          	ld	ra,8(sp)
    8000cf5c:	00013403          	ld	s0,0(sp)
    8000cf60:	01010113          	addi	sp,sp,16
    8000cf64:	00008067          	ret
    8000cf68:	00008067          	ret

000000008000cf6c <_Znwm>:
{
    8000cf6c:	ff010113          	addi	sp,sp,-16
    8000cf70:	00113423          	sd	ra,8(sp)
    8000cf74:	00813023          	sd	s0,0(sp)
    8000cf78:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    8000cf7c:	fffff097          	auipc	ra,0xfffff
    8000cf80:	0a4080e7          	jalr	164(ra) # 8000c020 <_Z9mem_allocm>
}
    8000cf84:	00813083          	ld	ra,8(sp)
    8000cf88:	00013403          	ld	s0,0(sp)
    8000cf8c:	01010113          	addi	sp,sp,16
    8000cf90:	00008067          	ret

000000008000cf94 <_ZdlPv>:
{
    8000cf94:	ff010113          	addi	sp,sp,-16
    8000cf98:	00113423          	sd	ra,8(sp)
    8000cf9c:	00813023          	sd	s0,0(sp)
    8000cfa0:	01010413          	addi	s0,sp,16
    mem_free(p);
    8000cfa4:	fffff097          	auipc	ra,0xfffff
    8000cfa8:	0ac080e7          	jalr	172(ra) # 8000c050 <_Z8mem_freePv>
}
    8000cfac:	00813083          	ld	ra,8(sp)
    8000cfb0:	00013403          	ld	s0,0(sp)
    8000cfb4:	01010113          	addi	sp,sp,16
    8000cfb8:	00008067          	ret

000000008000cfbc <_ZN6ThreadD0Ev>:
Thread::~Thread()
    8000cfbc:	fe010113          	addi	sp,sp,-32
    8000cfc0:	00113c23          	sd	ra,24(sp)
    8000cfc4:	00813823          	sd	s0,16(sp)
    8000cfc8:	00913423          	sd	s1,8(sp)
    8000cfcc:	02010413          	addi	s0,sp,32
    8000cfd0:	00050493          	mv	s1,a0
}
    8000cfd4:	00000097          	auipc	ra,0x0
    8000cfd8:	f18080e7          	jalr	-232(ra) # 8000ceec <_ZN6ThreadD1Ev>
    8000cfdc:	00048513          	mv	a0,s1
    8000cfe0:	00000097          	auipc	ra,0x0
    8000cfe4:	fb4080e7          	jalr	-76(ra) # 8000cf94 <_ZdlPv>
    8000cfe8:	01813083          	ld	ra,24(sp)
    8000cfec:	01013403          	ld	s0,16(sp)
    8000cff0:	00813483          	ld	s1,8(sp)
    8000cff4:	02010113          	addi	sp,sp,32
    8000cff8:	00008067          	ret

000000008000cffc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    8000cffc:	fe010113          	addi	sp,sp,-32
    8000d000:	00113c23          	sd	ra,24(sp)
    8000d004:	00813823          	sd	s0,16(sp)
    8000d008:	00913423          	sd	s1,8(sp)
    8000d00c:	02010413          	addi	s0,sp,32
    8000d010:	00050493          	mv	s1,a0
}
    8000d014:	00000097          	auipc	ra,0x0
    8000d018:	f18080e7          	jalr	-232(ra) # 8000cf2c <_ZN9SemaphoreD1Ev>
    8000d01c:	00048513          	mv	a0,s1
    8000d020:	00000097          	auipc	ra,0x0
    8000d024:	f74080e7          	jalr	-140(ra) # 8000cf94 <_ZdlPv>
    8000d028:	01813083          	ld	ra,24(sp)
    8000d02c:	01013403          	ld	s0,16(sp)
    8000d030:	00813483          	ld	s1,8(sp)
    8000d034:	02010113          	addi	sp,sp,32
    8000d038:	00008067          	ret

000000008000d03c <_ZN6Thread5startEv>:
    if(myHandle != nullptr)
    8000d03c:	00853503          	ld	a0,8(a0)
    8000d040:	02050663          	beqz	a0,8000d06c <_ZN6Thread5startEv+0x30>
{
    8000d044:	ff010113          	addi	sp,sp,-16
    8000d048:	00113423          	sd	ra,8(sp)
    8000d04c:	00813023          	sd	s0,0(sp)
    8000d050:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    8000d054:	fffff097          	auipc	ra,0xfffff
    8000d058:	1e8080e7          	jalr	488(ra) # 8000c23c <_Z12thread_startPv>
}
    8000d05c:	00813083          	ld	ra,8(sp)
    8000d060:	00013403          	ld	s0,0(sp)
    8000d064:	01010113          	addi	sp,sp,16
    8000d068:	00008067          	ret
        return -1;
    8000d06c:	fff00513          	li	a0,-1
}
    8000d070:	00008067          	ret

000000008000d074 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    8000d074:	ff010113          	addi	sp,sp,-16
    8000d078:	00113423          	sd	ra,8(sp)
    8000d07c:	00813023          	sd	s0,0(sp)
    8000d080:	01010413          	addi	s0,sp,16
    thread_dispatch();
    8000d084:	fffff097          	auipc	ra,0xfffff
    8000d088:	088080e7          	jalr	136(ra) # 8000c10c <_Z15thread_dispatchv>
}
    8000d08c:	00813083          	ld	ra,8(sp)
    8000d090:	00013403          	ld	s0,0(sp)
    8000d094:	01010113          	addi	sp,sp,16
    8000d098:	00008067          	ret

000000008000d09c <_ZN6Thread5sleepEm>:
{
    8000d09c:	ff010113          	addi	sp,sp,-16
    8000d0a0:	00113423          	sd	ra,8(sp)
    8000d0a4:	00813023          	sd	s0,0(sp)
    8000d0a8:	01010413          	addi	s0,sp,16
    time_sleep(time);
    8000d0ac:	fffff097          	auipc	ra,0xfffff
    8000d0b0:	164080e7          	jalr	356(ra) # 8000c210 <_Z10time_sleepm>
}
    8000d0b4:	00813083          	ld	ra,8(sp)
    8000d0b8:	00013403          	ld	s0,0(sp)
    8000d0bc:	01010113          	addi	sp,sp,16
    8000d0c0:	00008067          	ret

000000008000d0c4 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    8000d0c4:	fe010113          	addi	sp,sp,-32
    8000d0c8:	00113c23          	sd	ra,24(sp)
    8000d0cc:	00813823          	sd	s0,16(sp)
    8000d0d0:	00913423          	sd	s1,8(sp)
    8000d0d4:	01213023          	sd	s2,0(sp)
    8000d0d8:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    8000d0dc:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    8000d0e0:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    8000d0e4:	0004b783          	ld	a5,0(s1)
    8000d0e8:	0187b783          	ld	a5,24(a5)
    8000d0ec:	00048513          	mv	a0,s1
    8000d0f0:	000780e7          	jalr	a5
        Thread::sleep(time);
    8000d0f4:	00090513          	mv	a0,s2
    8000d0f8:	00000097          	auipc	ra,0x0
    8000d0fc:	fa4080e7          	jalr	-92(ra) # 8000d09c <_ZN6Thread5sleepEm>
    while(true)
    8000d100:	fe5ff06f          	j	8000d0e4 <_ZN14PeriodicThread6runnerEPv+0x20>

000000008000d104 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    8000d104:	ff010113          	addi	sp,sp,-16
    8000d108:	00113423          	sd	ra,8(sp)
    8000d10c:	00813023          	sd	s0,0(sp)
    8000d110:	01010413          	addi	s0,sp,16
    8000d114:	00001797          	auipc	a5,0x1
    8000d118:	f6c78793          	addi	a5,a5,-148 # 8000e080 <_ZTV6Thread+0x10>
    8000d11c:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    8000d120:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, body, args);
    8000d124:	00850513          	addi	a0,a0,8
    8000d128:	fffff097          	auipc	ra,0xfffff
    8000d12c:	140080e7          	jalr	320(ra) # 8000c268 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    8000d130:	00813083          	ld	ra,8(sp)
    8000d134:	00013403          	ld	s0,0(sp)
    8000d138:	01010113          	addi	sp,sp,16
    8000d13c:	00008067          	ret

000000008000d140 <_ZN6ThreadC1Ev>:
Thread::Thread()
    8000d140:	ff010113          	addi	sp,sp,-16
    8000d144:	00113423          	sd	ra,8(sp)
    8000d148:	00813023          	sd	s0,0(sp)
    8000d14c:	01010413          	addi	s0,sp,16
    8000d150:	00001797          	auipc	a5,0x1
    8000d154:	f3078793          	addi	a5,a5,-208 # 8000e080 <_ZTV6Thread+0x10>
    8000d158:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    8000d15c:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    8000d160:	00050613          	mv	a2,a0
    8000d164:	00000597          	auipc	a1,0x0
    8000d168:	d5c58593          	addi	a1,a1,-676 # 8000cec0 <_ZN6Thread6runnerEPv>
    8000d16c:	00850513          	addi	a0,a0,8
    8000d170:	fffff097          	auipc	ra,0xfffff
    8000d174:	0f8080e7          	jalr	248(ra) # 8000c268 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    8000d178:	00813083          	ld	ra,8(sp)
    8000d17c:	00013403          	ld	s0,0(sp)
    8000d180:	01010113          	addi	sp,sp,16
    8000d184:	00008067          	ret

000000008000d188 <_ZN9Semaphore4waitEv>:
    if(myHandle == nullptr)
    8000d188:	00853503          	ld	a0,8(a0)
    8000d18c:	02050663          	beqz	a0,8000d1b8 <_ZN9Semaphore4waitEv+0x30>
{
    8000d190:	ff010113          	addi	sp,sp,-16
    8000d194:	00113423          	sd	ra,8(sp)
    8000d198:	00813023          	sd	s0,0(sp)
    8000d19c:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    8000d1a0:	fffff097          	auipc	ra,0xfffff
    8000d1a4:	018080e7          	jalr	24(ra) # 8000c1b8 <_Z8sem_waitP4_sem>
}
    8000d1a8:	00813083          	ld	ra,8(sp)
    8000d1ac:	00013403          	ld	s0,0(sp)
    8000d1b0:	01010113          	addi	sp,sp,16
    8000d1b4:	00008067          	ret
        return -1;
    8000d1b8:	fff00513          	li	a0,-1
}
    8000d1bc:	00008067          	ret

000000008000d1c0 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    8000d1c0:	fe010113          	addi	sp,sp,-32
    8000d1c4:	00113c23          	sd	ra,24(sp)
    8000d1c8:	00813823          	sd	s0,16(sp)
    8000d1cc:	00913423          	sd	s1,8(sp)
    8000d1d0:	02010413          	addi	s0,sp,32
    8000d1d4:	00050493          	mv	s1,a0
    8000d1d8:	00001797          	auipc	a5,0x1
    8000d1dc:	ed078793          	addi	a5,a5,-304 # 8000e0a8 <_ZTV9Semaphore+0x10>
    8000d1e0:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    8000d1e4:	00850513          	addi	a0,a0,8
    8000d1e8:	fffff097          	auipc	ra,0xfffff
    8000d1ec:	f6c080e7          	jalr	-148(ra) # 8000c154 <_Z8sem_openPP4_semj>
    if(retval != 0)
    8000d1f0:	00050463          	beqz	a0,8000d1f8 <_ZN9SemaphoreC1Ej+0x38>
        myHandle = nullptr;
    8000d1f4:	0004b423          	sd	zero,8(s1)
}
    8000d1f8:	01813083          	ld	ra,24(sp)
    8000d1fc:	01013403          	ld	s0,16(sp)
    8000d200:	00813483          	ld	s1,8(sp)
    8000d204:	02010113          	addi	sp,sp,32
    8000d208:	00008067          	ret

000000008000d20c <_ZN9Semaphore6signalEv>:
    if(myHandle == nullptr)
    8000d20c:	00853503          	ld	a0,8(a0)
    8000d210:	02050663          	beqz	a0,8000d23c <_ZN9Semaphore6signalEv+0x30>
{
    8000d214:	ff010113          	addi	sp,sp,-16
    8000d218:	00113423          	sd	ra,8(sp)
    8000d21c:	00813023          	sd	s0,0(sp)
    8000d220:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    8000d224:	fffff097          	auipc	ra,0xfffff
    8000d228:	fc0080e7          	jalr	-64(ra) # 8000c1e4 <_Z10sem_signalP4_sem>
}
    8000d22c:	00813083          	ld	ra,8(sp)
    8000d230:	00013403          	ld	s0,0(sp)
    8000d234:	01010113          	addi	sp,sp,16
    8000d238:	00008067          	ret
        return -1;
    8000d23c:	fff00513          	li	a0,-1
}
    8000d240:	00008067          	ret

000000008000d244 <_ZN7Console4getcEv>:
{
    8000d244:	ff010113          	addi	sp,sp,-16
    8000d248:	00113423          	sd	ra,8(sp)
    8000d24c:	00813023          	sd	s0,0(sp)
    8000d250:	01010413          	addi	s0,sp,16
    return ::getc();
    8000d254:	fffff097          	auipc	ra,0xfffff
    8000d258:	0a4080e7          	jalr	164(ra) # 8000c2f8 <_Z4getcv>
}
    8000d25c:	00813083          	ld	ra,8(sp)
    8000d260:	00013403          	ld	s0,0(sp)
    8000d264:	01010113          	addi	sp,sp,16
    8000d268:	00008067          	ret

000000008000d26c <_ZN7Console4putcEc>:
{
    8000d26c:	ff010113          	addi	sp,sp,-16
    8000d270:	00113423          	sd	ra,8(sp)
    8000d274:	00813023          	sd	s0,0(sp)
    8000d278:	01010413          	addi	s0,sp,16
    return ::putc(c);
    8000d27c:	fffff097          	auipc	ra,0xfffff
    8000d280:	0a4080e7          	jalr	164(ra) # 8000c320 <_Z4putcc>
}
    8000d284:	00813083          	ld	ra,8(sp)
    8000d288:	00013403          	ld	s0,0(sp)
    8000d28c:	01010113          	addi	sp,sp,16
    8000d290:	00008067          	ret

000000008000d294 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    8000d294:	fe010113          	addi	sp,sp,-32
    8000d298:	00113c23          	sd	ra,24(sp)
    8000d29c:	00813823          	sd	s0,16(sp)
    8000d2a0:	00913423          	sd	s1,8(sp)
    8000d2a4:	01213023          	sd	s2,0(sp)
    8000d2a8:	02010413          	addi	s0,sp,32
    8000d2ac:	00050493          	mv	s1,a0
    8000d2b0:	00058913          	mv	s2,a1
    8000d2b4:	01000513          	li	a0,16
    8000d2b8:	00000097          	auipc	ra,0x0
    8000d2bc:	cb4080e7          	jalr	-844(ra) # 8000cf6c <_Znwm>
    8000d2c0:	00050613          	mv	a2,a0
    8000d2c4:	00050663          	beqz	a0,8000d2d0 <_ZN14PeriodicThreadC1Em+0x3c>
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    8000d2c8:	00953023          	sd	s1,0(a0)
    8000d2cc:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    8000d2d0:	00000597          	auipc	a1,0x0
    8000d2d4:	df458593          	addi	a1,a1,-524 # 8000d0c4 <_ZN14PeriodicThread6runnerEPv>
    8000d2d8:	00048513          	mv	a0,s1
    8000d2dc:	00000097          	auipc	ra,0x0
    8000d2e0:	e28080e7          	jalr	-472(ra) # 8000d104 <_ZN6ThreadC1EPFvPvES0_>
    8000d2e4:	00001797          	auipc	a5,0x1
    8000d2e8:	d6c78793          	addi	a5,a5,-660 # 8000e050 <_ZTV14PeriodicThread+0x10>
    8000d2ec:	00f4b023          	sd	a5,0(s1)
}
    8000d2f0:	01813083          	ld	ra,24(sp)
    8000d2f4:	01013403          	ld	s0,16(sp)
    8000d2f8:	00813483          	ld	s1,8(sp)
    8000d2fc:	00013903          	ld	s2,0(sp)
    8000d300:	02010113          	addi	sp,sp,32
    8000d304:	00008067          	ret

000000008000d308 <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    8000d308:	ff010113          	addi	sp,sp,-16
    8000d30c:	00813423          	sd	s0,8(sp)
    8000d310:	01010413          	addi	s0,sp,16
    8000d314:	00813403          	ld	s0,8(sp)
    8000d318:	01010113          	addi	sp,sp,16
    8000d31c:	00008067          	ret

000000008000d320 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    8000d320:	ff010113          	addi	sp,sp,-16
    8000d324:	00813423          	sd	s0,8(sp)
    8000d328:	01010413          	addi	s0,sp,16
    8000d32c:	00813403          	ld	s0,8(sp)
    8000d330:	01010113          	addi	sp,sp,16
    8000d334:	00008067          	ret

000000008000d338 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    8000d338:	ff010113          	addi	sp,sp,-16
    8000d33c:	00113423          	sd	ra,8(sp)
    8000d340:	00813023          	sd	s0,0(sp)
    8000d344:	01010413          	addi	s0,sp,16
    8000d348:	00001797          	auipc	a5,0x1
    8000d34c:	d0878793          	addi	a5,a5,-760 # 8000e050 <_ZTV14PeriodicThread+0x10>
    8000d350:	00f53023          	sd	a5,0(a0)
    8000d354:	00000097          	auipc	ra,0x0
    8000d358:	b98080e7          	jalr	-1128(ra) # 8000ceec <_ZN6ThreadD1Ev>
    8000d35c:	00813083          	ld	ra,8(sp)
    8000d360:	00013403          	ld	s0,0(sp)
    8000d364:	01010113          	addi	sp,sp,16
    8000d368:	00008067          	ret

000000008000d36c <_ZN14PeriodicThreadD0Ev>:
    8000d36c:	fe010113          	addi	sp,sp,-32
    8000d370:	00113c23          	sd	ra,24(sp)
    8000d374:	00813823          	sd	s0,16(sp)
    8000d378:	00913423          	sd	s1,8(sp)
    8000d37c:	02010413          	addi	s0,sp,32
    8000d380:	00050493          	mv	s1,a0
    8000d384:	00001797          	auipc	a5,0x1
    8000d388:	ccc78793          	addi	a5,a5,-820 # 8000e050 <_ZTV14PeriodicThread+0x10>
    8000d38c:	00f53023          	sd	a5,0(a0)
    8000d390:	00000097          	auipc	ra,0x0
    8000d394:	b5c080e7          	jalr	-1188(ra) # 8000ceec <_ZN6ThreadD1Ev>
    8000d398:	00048513          	mv	a0,s1
    8000d39c:	00000097          	auipc	ra,0x0
    8000d3a0:	bf8080e7          	jalr	-1032(ra) # 8000cf94 <_ZdlPv>
    8000d3a4:	01813083          	ld	ra,24(sp)
    8000d3a8:	01013403          	ld	s0,16(sp)
    8000d3ac:	00813483          	ld	s1,8(sp)
    8000d3b0:	02010113          	addi	sp,sp,32
    8000d3b4:	00008067          	ret

000000008000d3b8 <_ZN14PCBWrapperUser15userMainWrapperEPv>:
#include "../../h/PCBWrapperUser.hpp"
#include "../../h/syscall_c.hpp"
#include "test/userMain.hpp"

void PCBWrapperUser::userMainWrapper(void* a)
{
    8000d3b8:	ff010113          	addi	sp,sp,-16
    8000d3bc:	00113423          	sd	ra,8(sp)
    8000d3c0:	00813023          	sd	s0,0(sp)
    8000d3c4:	01010413          	addi	s0,sp,16
    userMain();
    8000d3c8:	fffff097          	auipc	ra,0xfffff
    8000d3cc:	7b0080e7          	jalr	1968(ra) # 8000cb78 <_Z8userMainv>
}
    8000d3d0:	00813083          	ld	ra,8(sp)
    8000d3d4:	00013403          	ld	s0,0(sp)
    8000d3d8:	01010113          	addi	sp,sp,16
    8000d3dc:	00008067          	ret

000000008000d3e0 <_ZN14PCBWrapperUser11wrapperUserEPFvPvES0_>:

void PCBWrapperUser::wrapperUser(Body body, void* args)
{
    8000d3e0:	ff010113          	addi	sp,sp,-16
    8000d3e4:	00113423          	sd	ra,8(sp)
    8000d3e8:	00813023          	sd	s0,0(sp)
    8000d3ec:	01010413          	addi	s0,sp,16
    8000d3f0:	00050793          	mv	a5,a0
    body(args);
    8000d3f4:	00058513          	mv	a0,a1
    8000d3f8:	000780e7          	jalr	a5
    thread_exit();
    8000d3fc:	fffff097          	auipc	ra,0xfffff
    8000d400:	d30080e7          	jalr	-720(ra) # 8000c12c <_Z11thread_exitv>
    8000d404:	00813083          	ld	ra,8(sp)
    8000d408:	00013403          	ld	s0,0(sp)
    8000d40c:	01010113          	addi	sp,sp,16
    8000d410:	00008067          	ret

000000008000d414 <_ZN4_semdlEPv>:
//

#include "../../h/_sem.hpp"
#include "../../h/syscall_c.hpp"

void _sem::operator delete(void *p) {
    8000d414:	ff010113          	addi	sp,sp,-16
    8000d418:	00113423          	sd	ra,8(sp)
    8000d41c:	00813023          	sd	s0,0(sp)
    8000d420:	01010413          	addi	s0,sp,16
    sem_close((sem_t)p);
    8000d424:	fffff097          	auipc	ra,0xfffff
    8000d428:	d68080e7          	jalr	-664(ra) # 8000c18c <_Z9sem_closeP4_sem>
}
    8000d42c:	00813083          	ld	ra,8(sp)
    8000d430:	00013403          	ld	s0,0(sp)
    8000d434:	01010113          	addi	sp,sp,16
    8000d438:	00008067          	ret
	...

000000008000e000 <userDataStart>:
    8000e000:	7542                	ld	a0,48(sp)
    8000e002:	6666                	ld	a2,88(sp)
    8000e004:	7265                	lui	tp,0xffff9
    8000e006:	6420                	ld	s0,72(s0)
    8000e008:	6c65                	lui	s8,0x19
    8000e00a:	7465                	lui	s0,0xffff9
    8000e00c:	6465                	lui	s0,0x19
    8000e00e:	0a21                	addi	s4,s4,8
	...
    8000e018:	6548                	ld	a0,136(a0)
    8000e01a:	6c6c                	ld	a1,216(s0)
    8000e01c:	0000206f          	j	8001001c <end+0x101c>
    8000e020:	2120                	fld	fs0,64(a0)
    8000e022:	000a                	c.slli	zero,0x2
    8000e024:	0000                	unimp
	...

000000008000e028 <digits>:
    8000e028:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF
	...

000000008000e040 <_ZTV14PeriodicThread>:
	...
    8000e050:	d338 8000 0000 0000 d36c 8000 0000 0000     8.......l.......
    8000e060:	d308 8000 0000 0000 d320 8000 0000 0000     ........ .......

000000008000e070 <_ZTV6Thread>:
	...
    8000e080:	ceec 8000 0000 0000 cfbc 8000 0000 0000     ................
    8000e090:	d308 8000 0000 0000                         ........

000000008000e098 <_ZTV9Semaphore>:
	...
    8000e0a8:	cf2c 8000 0000 0000 cffc 8000 0000 0000     ,...............

000000008000e0b8 <lockPrint>:
	...

000000008000e0c0 <finished>:
	...
    8000e0c8:	0010 0000 0000 0000 7a03 0052 7c01 0101     .........zR..|..
    8000e0d8:	0d1b 0002 0020 0000 0018 0000 df3c ffff     .... .......<...
    8000e0e8:	0030 0000 4400 100e 8844 4402 000c 0000     0....D..D..D....
    8000e0f8:	0c00 1002 0e44 0000 0020 0000 003c 0000     ....D... ...<...
    8000e108:	df48 ffff 002c 0000 4400 100e 8844 4402     H...,....D..D..D
    8000e118:	000c 0000 0c00 1002 0e44 0000 0034 0000     ........D...4...
    8000e128:	0060 0000 df50 ffff 0090 0000 4400 000e     `...P........D..
	...
    8000e140:	9300 440a 080c 0000 0000 0000 0c00 3002     ...D...........0
    8000e150:	c944 d244 d344 0e44 4400 000b 0020 0000     D.D.D.D..D.. ...
    8000e160:	0098 0000 dfa8 ffff 0020 0000 4400 100e     ........ ....D..
    8000e170:	8844 4402 000c 0000 0c00 1002 0e44 0000     D..D........D...
    8000e180:	0020 0000 00bc 0000 dfa4 ffff 0028 0000      ...........(...
    8000e190:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    8000e1a0:	0e44 0000 0020 0000 00e0 0000 dfa8 ffff     D... ...........
    8000e1b0:	0038 0000 4400 100e 8844 4402 000c 0000     8....D..D..D....
    8000e1c0:	0c00 1002 0e44 0000 0020 0000 0104 0000     ....D... .......
    8000e1d0:	dfbc ffff 002c 0000 4400 100e 8844 4402     ....,....D..D..D
    8000e1e0:	000c 0000 0c00 1002 0e44 0000 0020 0000     ........D... ...
    8000e1f0:	0128 0000 dfc4 ffff 002c 0000 4400 100e     (.......,....D..
    8000e200:	8844 4402 000c 0000 0c00 1002 0e44 0000     D..D........D...
    8000e210:	0020 0000 014c 0000 dfcc ffff 002c 0000      ...L.......,...
    8000e220:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    8000e230:	0e44 0000 0020 0000 0170 0000 dfd4 ffff     D... ...p.......
    8000e240:	002c 0000 4400 100e 8844 4402 000c 0000     ,....D..D..D....
    8000e250:	0c00 1002 0e44 0000 0020 0000 0194 0000     ....D... .......
    8000e260:	dfdc ffff 002c 0000 4400 100e 8844 4402     ....,....D..D..D
    8000e270:	000c 0000 0c00 1002 0e44 0000 0034 0000     ........D...4...
    8000e280:	01b8 0000 dfe4 ffff 0090 0000 4400 000e     .............D..
	...
    8000e298:	9300 440a 080c 0000 0000 0000 0c00 3002     ...D...........0
    8000e2a8:	c944 d244 d344 0e44 4400 000b 0020 0000     D.D.D.D..D.. ...
    8000e2b8:	01f0 0000 e03c ffff 0028 0000 4400 100e     ....<...(....D..
    8000e2c8:	8844 4402 000c 0000 0c00 1002 0e44 0000     D..D........D...
    8000e2d8:	0020 0000 0214 0000 e040 ffff 0024 0000      .......@...$...
    8000e2e8:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    8000e2f8:	0e44 0000 0020 0000 0238 0000 e040 ffff     D... ...8...@...
    8000e308:	002c 0000 4400 100e 8844 4402 000c 0000     ,....D..D..D....
    8000e318:	0c00 1002 0e44 0000 0010 0000 0000 0000     ....D...........
    8000e328:	7a03 0052 7c01 0101 0d1b 0002 0028 0000     .zR..|......(...
    8000e338:	0018 0000 e034 ffff 0028 0000 4400 000e     ....4...(....D..
    8000e348:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    8000e358:	0e44 0000 0000 0000 0010 0000 0000 0000     D...............
    8000e368:	7a03 0052 7c01 0101 0d1b 0002 0028 0000     .zR..|......(...
    8000e378:	0018 0000 e01c ffff 007c 0000 4400 000e     ........|....D..
    8000e388:	0000 0000 8900 4406 080c 0200 0000 0000     .......D........
    8000e398:	020c 4420 44c9 000e 0034 0000 0044 0000     .. D.D..4...D...
    8000e3a8:	e06c ffff 00cc 0000 4400 000e 0000 0000     l........D......
    8000e3b8:	0000 0000 0000 9400 440c 080c 0200 0000     .........D......
    8000e3c8:	0000 020c 4430 44c9 44d2 44d3 44d4 000e     ....0D.D.D.D.D..
    8000e3d8:	0020 0000 007c 0000 e100 ffff 0050 0000      ...|.......P...
    8000e3e8:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    8000e3f8:	0e44 0000 0030 0000 00a0 0000 e12c ffff     D...0.......,...
    8000e408:	0114 0000 4400 000e 0000 0000 0000 0000     .....D..........
    8000e418:	9300 440a 080c 0200 0000 0000 020c 4440     ...D..........@D
    8000e428:	44c9 44d2 44d3 000e 0018 0000 0000 0000     .D.D.D..........
    8000e438:	7a03 4c50 0052 7c01 0701 6d9b ffa4 1bff     .zPLR..|...m....
    8000e448:	0d1b 0002 0038 0000 0020 0000 e1f0 ffff     ....8... .......
    8000e458:	0164 0000 9104 ffa3 44ff 000e 0000 0000     d........D......
    8000e468:	0000 0000 9300 440a 080c 0000 0000 0000     .......D........
    8000e478:	0c00 3002 c944 d244 d344 0e44 4400 000b     ...0D.D.D.D..D..
    8000e488:	0010 0000 0000 0000 7a03 0052 7c01 0101     .........zR..|..
    8000e498:	0d1b 0002 002c 0000 0018 0000 e304 ffff     ....,...........
    8000e4a8:	0090 0000 4400 000e 0000 0000 0000 9200     .....D..........
    8000e4b8:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    8000e4c8:	44d2 000e 002c 0000 0048 0000 e364 ffff     .D..,...H...d...
    8000e4d8:	008c 0000 4400 000e 0000 0000 0000 9200     .....D..........
    8000e4e8:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    8000e4f8:	44d2 000e 0030 0000 0078 0000 e3c0 ffff     .D..0...x.......
    8000e508:	0088 0000 4400 000e 0000 0000 0000 9200     .....D..........
    8000e518:	4408 080c 0000 0000 0000 0c00 2002 c944     .D........... D.
    8000e528:	d244 0e44 4400 000b 002c 0000 0104 0000     D.D..D..,.......
    8000e538:	e414 ffff 0100 0000 4e04 ffa3 44ff 000e     .........N...D..
    8000e548:	0000 0000 8900 4406 080c 0200 0000 0000     .......D........
    8000e558:	020c 4420 44c9 000e 0010 0000 0000 0000     .. D.D..........
    8000e568:	7a03 0052 7c01 0101 0d1b 0002 002c 0000     .zR..|......,...
    8000e578:	0018 0000 e4d0 ffff 00a4 0000 4400 000e     .............D..
    8000e588:	0000 0000 0000 9200 4408 080c 0200 0000     .........D......
    8000e598:	0000 020c 4420 44c9 44d2 000e 0028 0000     .... D.D.D..(...
    8000e5a8:	0048 0000 e544 ffff 0088 0000 4400 000e     H...D........D..
    8000e5b8:	0000 0000 8900 4406 080c 0200 0000 0000     .......D........
    8000e5c8:	020c 4440 44c9 000e 0024 0000 0074 0000     ..@D.D..$...t...
    8000e5d8:	e5a0 ffff 0028 0000 4400 000e 0000 8800     ....(....D......
    8000e5e8:	4404 080c 0000 0000 0c00 1002 0e44 0000     .D..........D...
    8000e5f8:	0010 0000 0000 0000 7a03 0052 7c01 0101     .........zR..|..
    8000e608:	0d1b 0002 002c 0000 0018 0000 e58c ffff     ....,...........
    8000e618:	009c 0000 4400 000e 0000 0000 0000 9200     .....D..........
    8000e628:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    8000e638:	44d2 000e 002c 0000 0048 0000 e5f8 ffff     .D..,...H.......
    8000e648:	0090 0000 4400 000e 0000 0000 0000 9200     .....D..........
    8000e658:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    8000e668:	44d2 000e 002c 0000 0078 0000 e658 ffff     .D..,...x...X...
    8000e678:	008c 0000 4400 000e 0000 0000 0000 9200     .....D..........
    8000e688:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    8000e698:	44d2 000e 0030 0000 00a8 0000 e6b4 ffff     .D..0...........
    8000e6a8:	0088 0000 4400 000e 0000 0000 0000 9200     .....D..........
    8000e6b8:	4408 080c 0000 0000 0000 0c00 2002 c944     .D........... D.
    8000e6c8:	d244 0e44 4400 000b 0018 0000 0000 0000     D.D..D..........
    8000e6d8:	7a03 4c50 0052 7c01 0701 cd9b ffa1 1bff     .zPLR..|........
    8000e6e8:	0d1b 0002 0030 0000 0020 0000 e6ec ffff     ....0... .......
    8000e6f8:	00e0 0000 9604 ffa1 44ff 000e 0000 0000     .........D......
    8000e708:	8900 4406 080c 0200 0000 0000 020c 4420     ...D.......... D
    8000e718:	44c9 000e 0000 0000 0010 0000 0000 0000     .D..............
    8000e728:	7a03 0052 7c01 0101 0d1b 0002 0020 0000     .zR..|...... ...
    8000e738:	0018 0000 ebcc ffff 0018 0000 4400 100e     .............D..
    8000e748:	8844 4402 000c 0000 0c00 1002 0e44 0000     D..D........D...
    8000e758:	0020 0000 003c 0000 ebc0 ffff 0018 0000      ...<...........
    8000e768:	4400 100e 8844 4402 000c 0000 0c00 1002     .D..D..D........
    8000e778:	0e44 0000 0024 0000 0060 0000 e73c ffff     D...$...`...<...
    8000e788:	002c 0000 4400 000e 0000 8800 4404 080c     ,....D.......D..
    8000e798:	0000 0000 0c00 1002 0e44 0000 0018 0000     ........D.......
    8000e7a8:	0000 0000 7a03 4c50 0052 7c01 0701 f99b     .....zPLR..|....
    8000e7b8:	ffa0 1bff 0d1b 0002 0028 0000 0020 0000     ........(... ...
    8000e7c8:	e724 ffff 0040 0000 c604 ffa0 58ff 000e     $...@........X..
    8000e7d8:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    8000e7e8:	0e44 0000 0024 0000 00d0 0000 eb44 ffff     D...$.......D...
    8000e7f8:	0034 0000 4400 000e 0000 8800 4404 080c     4....D.......D..
    8000e808:	0000 0000 0c00 1002 0e44 0000 0028 0000     ........D...(...
    8000e818:	0074 0000 e710 ffff 0040 0000 7604 ffa0     t.......@....v..
    8000e828:	58ff 000e 0000 8800 4404 080c 0000 0000     .X.......D......
    8000e838:	0c00 1002 0e44 0000 0024 0000 0124 0000     ....D...$...$...
    8000e848:	e724 ffff 0028 0000 4400 000e 0000 8800     $...(....D......
    8000e858:	4404 080c 0000 0000 0c00 1002 0e44 0000     .D..........D...
    8000e868:	0024 0000 014c 0000 e724 ffff 0028 0000     $...L...$...(...
    8000e878:	4400 000e 0000 8800 4404 080c 0000 0000     .D.......D......
    8000e888:	0c00 1002 0e44 0000 0028 0000 0174 0000     ....D...(...t...
    8000e898:	e724 ffff 0040 0000 4400 000e 0000 0000     $...@....D......
    8000e8a8:	8900 4406 080c 0000 0000 0c00 2002 c944     ...D......... D.
    8000e8b8:	0e44 0000 0028 0000 01a0 0000 e738 ffff     D...(.......8...
    8000e8c8:	0040 0000 4400 000e 0000 0000 8900 4406     @....D.........D
    8000e8d8:	080c 0000 0000 0c00 2002 c944 0e44 0000     ......... D.D...
    8000e8e8:	0028 0000 01cc 0000 ea7c ffff 004c 0000     (.......|...L...
    8000e8f8:	4400 000e 0000 0000 8900 4406 080c 0000     .D.........D....
    8000e908:	0000 0c00 2002 c944 0e44 0000 0024 0000     ..... D.D...$...
    8000e918:	01f8 0000 e720 ffff 0038 0000 4c00 000e     .... ...8....L..
    8000e928:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    8000e938:	0e44 0000 0024 0000 0220 0000 e730 ffff     D...$... ...0...
    8000e948:	0028 0000 4400 000e 0000 8800 4404 080c     (....D.......D..
    8000e958:	0000 0000 0c00 1002 0e44 0000 0024 0000     ........D...$...
    8000e968:	0248 0000 e730 ffff 0028 0000 4400 000e     H...0...(....D..
    8000e978:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    8000e988:	0e44 0000 0020 0000 0270 0000 e730 ffff     D... ...p...0...
    8000e998:	0040 0000 4400 000e 0000 0000 0000 9200     @....D..........
    8000e9a8:	4408 080c 0000 0000 0024 0000 0294 0000     .D......$.......
    8000e9b8:	e74c ffff 003c 0000 4400 000e 0000 8800     L...<....D......
    8000e9c8:	4404 080c 0000 0000 0c00 1002 0e44 0000     .D..........D...
    8000e9d8:	0024 0000 02bc 0000 e760 ffff 0048 0000     $.......`...H...
    8000e9e8:	4400 000e 0000 8800 4404 080c 0000 0000     .D.......D......
    8000e9f8:	0c00 1002 0e44 0000 0024 0000 02e4 0000     ....D...$.......
    8000ea08:	e780 ffff 0038 0000 4c00 000e 0000 8800     ....8....L......
    8000ea18:	4404 080c 0000 0000 0c00 1002 0e44 0000     .D..........D...
    8000ea28:	0028 0000 030c 0000 e790 ffff 004c 0000     (...........L...
    8000ea38:	4400 000e 0000 0000 8900 4406 080c 0000     .D.........D....
    8000ea48:	0000 0c00 2002 c944 0e44 0000 0024 0000     ..... D.D...$...
    8000ea58:	0338 0000 e7b0 ffff 0038 0000 4c00 000e     8.......8....L..
    8000ea68:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    8000ea78:	0e44 0000 0024 0000 0360 0000 e7c0 ffff     D...$...`.......
    8000ea88:	0028 0000 4400 000e 0000 8800 4404 080c     (....D.......D..
    8000ea98:	0000 0000 0c00 1002 0e44 0000 0024 0000     ........D...$...
    8000eaa8:	0388 0000 e7c0 ffff 0028 0000 4400 000e     ........(....D..
    8000eab8:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    8000eac8:	0e44 0000 0030 0000 03b0 0000 e7c0 ffff     D...0...........
    8000ead8:	0074 0000 4400 000e 0000 0000 0000 9200     t....D..........
    8000eae8:	4408 080c 0200 0000 0000 020c 4420 44c9     .D.......... D.D
    8000eaf8:	44d2 000e 0000 0000 0010 0000 0000 0000     .D..............
    8000eb08:	7a03 0052 7c01 0101 0d1b 0002 0024 0000     .zR..|......$...
    8000eb18:	0018 0000 e89c ffff 0028 0000 4400 000e     ........(....D..
    8000eb28:	0000 8800 4404 080c 0000 0000 0c00 1002     .....D..........
    8000eb38:	0e44 0000 0028 0000 0040 0000 e89c ffff     D...(...@.......
    8000eb48:	0034 0000 4400 000e 0000 8800 4404 080c     4....D.......D..
    8000eb58:	0000 0000 0c00 1002 0e44 0000 0000 0000     ........D.......
    8000eb68:	0010 0000 0000 0000 7a03 0052 7c01 0101     .........zR..|..
    8000eb78:	0d1b 0002 0028 0000 0018 0000 e890 ffff     ....(...........
    8000eb88:	0028 0000 4400 000e 0000 8800 4404 080c     (....D.......D..
    8000eb98:	0000 0000 0c00 1002 0e44 0000 0000 0000     ........D.......
